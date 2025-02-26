import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';

import '../../../enum/share_option.dart';

class ShareFileHelper {
  static Future<File> generatePdfBytes(
    String title,
    String content,
    double titleFontSize,
    double contentFontSize,
  ) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: pw.Column(
              children: [
                pw.Text(
                  title,
                  style: pw.TextStyle(
                    fontSize: titleFontSize,
                  ),
                ),
                pw.Text(
                  '\n\n$content',
                  style: pw.TextStyle(
                    fontSize: contentFontSize,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    final directory = await getTemporaryDirectory();

    final filePath = '${directory.path}/$title.pdf';
    final file = File(filePath);

    return await file.writeAsBytes(await pdf.save());
  }

  static Future<File> generateTxtBytes(String title, String content) async {
    final directory = await getTemporaryDirectory();
    final filePath = '${directory.path}/$title.txt';
    final file = File(filePath);

    final text = '$title\n\n$content';

    return await file.writeAsBytes(utf8.encode(text));
  }

  static Future<void> shareNote({
    required String title,
    required String content,
    double titleFontSize = 0,
    double contentFontSize = 0,
    required ShareOption option,
  }) async {
    final directory = await getTemporaryDirectory();

    if (option == ShareOption.text) {
      Share.share('$title\n$content');
      return;
    }

    if (option == ShareOption.txt) {
      final file = await generateTxtBytes(title, content);

      final filePath = '${directory.path}/$title.txt';
      final txtFile = XFile(filePath);

      await Share.shareXFiles([txtFile]);

      await file.delete();
      return;
    }

    final file =
        await generatePdfBytes(title, content, titleFontSize, contentFontSize);

    final filePath = '${directory.path}/$title.pdf';
    final pdfFile = XFile(filePath);

    await Share.shareXFiles([pdfFile]);

    await file.delete();
  }
}
