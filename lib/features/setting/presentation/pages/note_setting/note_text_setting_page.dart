import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_note_app/features/setting/presentation/widgets/app_note_setting/note_setting_column.dart';

class NoteTextSettingPage extends StatelessWidget {
  const NoteTextSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('Note Text Settings'.tr()),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        scrolledUnderElevation: 0,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: NoteSettingColumn(),
        ),
      ),
    );
  }
}
