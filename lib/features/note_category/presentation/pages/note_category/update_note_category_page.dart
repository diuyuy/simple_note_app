import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../widgets/note_category/input_category_info_widget.dart';

class UpdateNoteCategoryPage extends StatelessWidget {
  const UpdateNoteCategoryPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('UpdateNoteCategoryPage.editCategory'.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: InputCategoryInfoWidget(id: id),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
