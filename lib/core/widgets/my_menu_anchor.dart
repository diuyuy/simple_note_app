import 'package:flutter/material.dart';

class MyMenuAnchor extends StatelessWidget {
  const MyMenuAnchor({super.key, required this.menuChildren});

  final List<MenuItemButton> menuChildren;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      menuChildren: menuChildren,
      builder: (context, controller, child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Icon(Icons.more_vert),
        );
      },
    );
  }
}
