import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/contain_query.dart';
import '../../../../../core/widgets/color_container_widget.dart';
import '../note_card_widget.dart';

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
            top: 12.0, bottom: 12.0, left: 12.0, right: 16.0),
        child: containQuery(target: content, query: query)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: buildContentRichText(context),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Divider(),
                  ),
                  buildNoteTile(context),
                ],
              )
            : buildNoteTile(context),
      ),
    );
  }

  Widget buildNoteTile(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColorContainerWidget(
          color: primaryColor,
          width: 36,
          alpha: 80,
          child: Icon(
            Icons.sticky_note_2,
            color: primaryColor,
          ),
        ),
        Gap(12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTitleRichText(context),
              Text(
                'NoteCardWidget.updateDate'.tr(args: [date]),
                style: TextStyle(
                  color: AppColors.midDarkGrey,
                  fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Gap(8.w),
        GestureDetector(
          onTap: onTapTrailing,
          child: Icon(
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
            style: getTitleTextStyle(context),
          ),
        );
      }

      spans.add(
        TextSpan(
          text: t.substring(match.start, match.end),
          style: getTitleTextStyle(context).copyWith(
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
          style: getTitleTextStyle(context),
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
        if (lastIndex != 0) {
          spans.add(
            TextSpan(
              text:
                  '$prefix${content.substring(lastIndex, lastIndex + scope)}...',
              style: getContentTextStyle(context),
            ),
          );
        }

        lastIndex = match.start - scope >= lastIndex + scope
            ? match.start - scope
            : lastIndex + scope;
        prefix = match == matches.first ? '...' : '\n...';
      }

      if (match.start > lastIndex) {
        final subString = content.substring(lastIndex, match.start);
        if (!subString.contains('\n')) {
          spans.add(
            TextSpan(
              text:
                  "$prefix${content.substring(lastIndex, match.start).trimLeft()}",
              style: getContentTextStyle(context),
            ),
          );
        } else {
          final index = subString.indexOf('\n');
          spans.add(
            TextSpan(
              text: subString.substring(index),
              style: getContentTextStyle(context),
            ),
          );
        }
      }

      spans.add(
        TextSpan(
          text: content.substring(match.start, match.end),
          style: getContentTextStyle(context).copyWith(
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
          style: getContentTextStyle(context),
        ),
      );
    }

    return RichText(text: TextSpan(children: spans));
  }

  TextStyle getTitleTextStyle(BuildContext context) => TextStyle(
        color: Colors.black,
        fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
      );

  TextStyle getContentTextStyle(BuildContext context) => TextStyle(
        color: AppColors.midDarkGrey,
        fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
      );
}
