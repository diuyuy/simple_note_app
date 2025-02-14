import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:simple_note_app/core/utils/contain_query.dart';

import '../color/app_colors.dart';
import '../constants/app_constants.dart';
import '../utils/color_container_widget.dart';
import 'note_card_widget.dart';

class FilteredNoteCardWidget extends StatelessWidget {
  const FilteredNoteCardWidget({
    super.key,
    required this.title,
    required this.content,
    required this.query,
    required this.date,
    required this.isFavorite,
    required this.onTapTrailing,
  });

  final String title;
  final String content;
  final String query;
  final String date;
  final bool isFavorite;
  final void Function() onTapTrailing;

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty) {
      return NoteCardWidget(
        title: title,
        date: date,
        isFavorite: isFavorite,
        onTapTrailing: onTapTrailing,
      );
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 12.0, bottom: 12.0, left: 12.0, right: 8.0),
        child: containQuery(target: content, query: query)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNoteTile(context),
                  const Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: buildContentRichText(context),
                  ),
                ],
              )
            : buildNoteTile(context),
      ),
    );
  }

  Widget buildNoteTile(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Row(
      children: [
        ColorContainerWidget(
          color: primaryColor,
          width: 36,
          alpha: 80,
          child: Icon(
            Icons.note_rounded,
            color: primaryColor,
          ),
        ),
        Gap(12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildTitleRichText(context),
            Text(
              'NoteCardWidget.updateDate'.tr(args: [date]),
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: AppConstants.noteCardDateFontSize,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: onTapTrailing,
          icon: Icon(
            isFavorite ? Icons.star : Icons.star_border,
            color: primaryColor,
          ),
        ),
      ],
    );
  }

  Widget buildTitleRichText(BuildContext context) {
    String t = title;

    if (title.isEmpty) {
      t = AppConstants.untitled.tr();
    }
    List<TextSpan> spans = [];
    int lastIndex = 0;

    final matches =
        RegExp(RegExp.escape(query), caseSensitive: false).allMatches(t);

    for (var match in matches) {
      if (match.start > lastIndex) {
        spans.add(
          TextSpan(
            text: t.substring(lastIndex, match.start),
            style: titleTextStyle,
          ),
        );
      }

      spans.add(
        TextSpan(
          text: t.substring(match.start, match.end),
          style: titleTextStyle.copyWith(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      );

      lastIndex = match.end;
    }

    if (lastIndex < t.length) {
      spans.add(
        TextSpan(
          text: t.substring(lastIndex),
          style: titleTextStyle,
        ),
      );
    }

    return RichText(text: TextSpan(children: spans));
  }

  Widget buildContentRichText(BuildContext context) {
    List<TextSpan> spans = [];
    int lastIndex = 0;
    int scope = 10;
    String suffix = '...';

    final matches =
        RegExp(RegExp.escape(query), caseSensitive: false).allMatches(content);

    for (var match in matches) {
      String prefix = '';

      if (match.start >= lastIndex + scope) {
        lastIndex = match.start - scope;
        prefix = match == matches.first ? '...' : '\n...';
      }

      if (match.start > lastIndex) {
        spans.add(
          TextSpan(
            text:
                "$prefix${content.substring(lastIndex, match.start).trimLeft()}",
            style: contentTextStyle,
          ),
        );
      }

      spans.add(
        TextSpan(
          text: content.substring(match.start, match.end),
          style: contentTextStyle.copyWith(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      );

      lastIndex = match.end;
    }

    if (lastIndex + scope >= content.length) {
      scope = content.length - lastIndex;
      suffix = '';
    }

    if (scope > 0) {
      spans.add(
        TextSpan(
          text: '${content.substring(lastIndex, lastIndex + scope)}$suffix',
          style: contentTextStyle,
        ),
      );
    }

    return RichText(text: TextSpan(children: spans));
  }

  TextStyle get titleTextStyle => TextStyle(
        color: Colors.black,
        fontSize: AppConstants.noteCardTitleFontSize,
      );

  TextStyle get contentTextStyle => TextStyle(
        color: AppColors.darkGrey,
        fontSize: AppConstants.noteCardDateFontSize,
      );
}
