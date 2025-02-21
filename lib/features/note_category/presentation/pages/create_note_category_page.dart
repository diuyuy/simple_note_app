import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/app_bar_back_button.dart';
import '../bloc/note_category_bloc.dart';
import '../widgets/note_category/input_category_info_widget.dart';

class CreateNoteCategoryPage extends StatelessWidget {
  const CreateNoteCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const AppBarBackButton(),
          title: Text('CreateNoteCategoryPage.newCategory'.tr()),
          centerTitle: true,
          actions: [],
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: BlocListener<NoteCategoryBloc, NoteCategoryState>(
              listener: (context, state) {
                context.pop();
              },
              child: const InputCategoryInfoWidget(),
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
