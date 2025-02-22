import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/setting/presentation/bloc/app_setting_bloc.dart';
import '../../router/router_path.dart';
import 'drawer_tile.dart';

class NoteDrawer extends StatelessWidget {
  const NoteDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Drawer.menu'.tr(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DrawerTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Drawer.home'.tr()),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
              context.read<AppSettingBloc>().add(
                    AppSettingEvent.appSettingUpdated(isExitOnHome: true),
                  );
            },
          ),
          DrawerTile(
            leading: Icon(Icons.star_outline),
            title: Text('Drawer.favorites'.tr()),
            onTap: () {
              Navigator.pop(context);
              context.push('/favorites');
            },
          ),
          DrawerTile(
            leading: Icon(Icons.category_outlined),
            title: Text('Drawer.category'.tr()),
            onTap: () {
              Navigator.pop(context);
              context.go(RouterPath.noteCategoryPage);
              context.read<AppSettingBloc>().add(
                    AppSettingEvent.appSettingUpdated(
                      isExitOnHome: false,
                    ),
                  );
            },
          ),
          DrawerTile(
            leading: Icon(Icons.delete_outline),
            title: Text('Drawer.trash'.tr()),
            onTap: () {
              Navigator.pop(context);
              context.push('/trash');
            },
          ),
          const Divider(),
          DrawerTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Drawer.settings'.tr()),
          ),
          DrawerTile(
            leading: Icon(Icons.description_outlined),
            title: Text('Drawer.openSourceLicence'.tr()),
          ),
          DrawerTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text('Drawer.privacyPolicy'.tr()),
          ),
          DrawerTile(
            leading: Icon(Icons.rate_review_outlined),
            title: Text('Drawer.appReview'.tr()),
          ),
        ],
      ),
    );
  }
}
