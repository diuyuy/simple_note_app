import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';

class NoteCategoryCardWidget extends StatelessWidget {
  const NoteCategoryCardWidget({
    super.key,
    required this.categoryName,
    required this.categoryIconCodePoint,
    required this.width,
    required this.color,
  });

  final String categoryName;
  final int categoryIconCodePoint;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  IconData(categoryIconCodePoint, fontFamily: 'MaterialIcons'),
                  size: width * 0.5,
                  color: color,
                ),
              ),
              const Spacer(),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        categoryName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    menuAnchor,
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Text('10'),
          ),
        ],
      ),
    );
  }

  Widget get menuAnchor {
    return MenuAnchor(
      alignmentOffset: Offset(8, 0),
      menuChildren: [
        MenuItemButton(
          style: MenuItemButton.styleFrom(
            minimumSize: Size(
              AppConstants.menuAnchorMinWidth.w,
              AppConstants.menuAnchorMinHeight.w,
            ),
          ),
          onPressed: () {},
          child: Text('NoteCategoryCardWidget.edit'.tr()),
        ),
        MenuItemButton(
          onPressed: () {},
          child: Text('NoteCategoryCardWidget.delete'.tr()),
        ),
      ],
      builder: (context, controller, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
