import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.leading,
    required this.title,
    this.onTap,
  });

  final Widget leading;
  final Widget title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: onTap,
    );
  }
}
