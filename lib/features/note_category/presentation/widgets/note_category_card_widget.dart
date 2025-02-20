import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_note_app/core/constants/app_constants.dart';

import '../../../../core/widgets/code_point_icon.dart';

class NoteCategoryCardWidget extends StatelessWidget {
  const NoteCategoryCardWidget({
    super.key,
    required this.categoryName,
    required this.categoryIconCodePoint,
    required this.noteCount,
    required this.index,
    required this.color,
    this.enabledOrder = true,
  });

  final String categoryName;
  final int categoryIconCodePoint;
  final int noteCount;
  final int index;
  final Color color;
  final bool enabledOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CodePointIcon(
              codePoint: categoryIconCodePoint,
              size: 36,
              color: color,
            ),
            Gap(12),
            Expanded(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: AppConstants.noteCategoryCardTitleFontSize,
                  //fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            RichText(
              text: TextSpan(
                text: '$noteCount ',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                ),
                children: [
                  TextSpan(
                    text: noteCount <= 1
                        ? 'NoteCategoryCardWidget.noteCount'.tr()
                        : 'NoteCategoryCardWidget.notesCount'.tr(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Gap(8),
            // MenuAnchor(
            //   menuChildren: [],
            //   builder: (context, controller, child) {
            //     return Icon(Icons.more_vert);
            //   },
            // ),
            enabledOrder
                ? ReorderableDragStartListener(
                    index: 0,
                    child: Icon(
                      Icons.drag_handle,
                    ),
                  )
                : Icon(Icons.drag_handle),
          ],
        ),
      ),
      // child: Stack(
      //   children: [
      //     Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 8.0),
      //           child: Icon(
      //             IconData(categoryIconCodePoint, fontFamily: 'MaterialIcons'),
      //             size: width * 0.5,
      //             color: color,
      //           ),
      //         ),
      //         const Spacer(),
      //         const Divider(height: 1),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: [
      //               Expanded(
      //                 child: Text(
      //                   categoryName,
      //                   maxLines: 2,
      //                   overflow: TextOverflow.ellipsis,
      //                 ),
      //               ),
      //               menuAnchor,
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     Positioned(
      //       top: 8,
      //       left: 8,
      //       child: Text('10'),
      //     ),
      //   ],
      // ),
    );
  }

  // Widget get menuAnchor {
  //   return MenuAnchor(
  //     alignmentOffset: Offset(8, 0),
  //     menuChildren: [
  //       MenuItemButton(
  //         style: MenuItemButton.styleFrom(
  //           minimumSize: Size(
  //             AppConstants.menuAnchorMinWidth.w,
  //             AppConstants.menuAnchorMinHeight.w,
  //           ),
  //         ),
  //         onPressed: () {},
  //         child: Text('NoteCategoryCardWidget.edit'.tr()),
  //       ),
  //       MenuItemButton(
  //         onPressed: () {},
  //         child: Text('NoteCategoryCardWidget.delete'.tr()),
  //       ),
  //     ],
  //     builder: (context, controller, child) {
  //       return GestureDetector(
  //         behavior: HitTestBehavior.opaque,
  //         onTap: () {
  //           if (controller.isOpen) {
  //             controller.close();
  //           } else {
  //             controller.open();
  //           }
  //         },
  //         child: Padding(
  //           padding: const EdgeInsets.only(left: 4.0),
  //           child: Icon(Icons.more_vert),
  //         ),
  //       );
  //     },
  //   );
  // }
}
