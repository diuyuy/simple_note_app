import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/router/router_path.dart';
import '../../../../core/widgets/code_point_icon.dart';

class NoteCategoryCardWidget extends StatelessWidget {
  const NoteCategoryCardWidget({
    super.key,
    required this.id,
    required this.categoryName,
    required this.categoryIconCodePoint,
    required this.noteCount,
    this.index = 0,
    required this.color,
    this.enabledOrder = false,
  });

  final String id;
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
            enabledOrder
                ? ReorderableDragStartListener(
                    index: 0,
                    child: Icon(
                      Icons.drag_handle,
                    ),
                  )
                : MenuAnchor(
                    menuChildren: buildMenuItemButtonList(context),
                    builder: (context, controller, child) {
                      return GestureDetector(
                        onTap: () {
                          if (controller.isOpen) {
                            controller.close();
                          } else {
                            controller.open();
                          }
                        },
                        child: Icon(Icons.more_vert),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildMenuItemButtonList(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          context.go(
            '$currentPath/${RouterPath.updateNoteCategoryPage}',
            extra: id,
          );
        },
        child: Text('NoteCategoryCardWidget.edit'.tr()),
      ),
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {},
        child: Text('NoteCategoryCardWidget.delete'.tr()),
      ),
    ];
  }
}
