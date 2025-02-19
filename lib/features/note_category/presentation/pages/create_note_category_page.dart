import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/show_snack_bar.dart';
import '../../../../core/widgets/app_bar_back_button.dart';
import '../bloc/note_category_bloc.dart';

class CreateNoteCategoryPage extends StatefulWidget {
  const CreateNoteCategoryPage({super.key});

  @override
  State<CreateNoteCategoryPage> createState() => _CreateNoteCategoryPageState();
}

class _CreateNoteCategoryPageState extends State<CreateNoteCategoryPage> {
  final TextEditingController _categoryNameController = TextEditingController();
  int? iconCode;
  int? categoryColor;

  @override
  void dispose() {
    _categoryNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarBackButton(),
        title: Text('CreateNoteCategoryPage.newCategory'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              if (_categoryNameController.text.isEmpty ||
                  iconCode == null ||
                  categoryColor == null) {
                showSnackBar(
                  context,
                  'CreateNoteCategoryPage.fillInAllFields'.tr(),
                );
                return;
              }
              context.read<NoteCategoryBloc>().add(
                    NoteCategoryEvent.categoryCreated(
                      categoryName: _categoryNameController.text,
                      iconCode: iconCode!,
                      categoryColor: categoryColor!,
                    ),
                  );
              context.pop();
            },
            child: Text('CreateNoteCategoryPage.save'.tr()),
          ),
        ],
      ),
    );
  }
}
