import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_path.dart';
import '../bloc/note_category_bloc.dart';
import '../widgets/note_category_card_widget.dart';

class NoteCategoryPage extends StatelessWidget {
  const NoteCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return Scaffold(
      //drawer: const NoteDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text('NoteCategoryPage.category'.tr()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('$currentPath/${RouterPath.createNoteCategoryPage}');
            },
            icon: Icon(
              Icons.create_new_folder_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          //MyMenuAnchor(menuChildren: []),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final noteCategoryStatus =
                  context.watch<NoteCategoryBloc>().state;

              return noteCategoryStatus.when(
                initial: (categories) => SizedBox.shrink(),
                loadSuccess: (categories) {
                  return GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                    ),
                    children: categories.map((category) {
                      return NoteCategoryCardWidget(
                        categoryName: category.categoryName,
                        categoryIconCodePoint: category.iconCode,
                        width: 0.25.sw,
                        color: Color(category.categoryColor),
                      );
                    }).toList(),
                  );
                },
                failure: (categories, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );

              // return GridView(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     crossAxisSpacing: 4.0,
              //   ),
              //   children: [
              //     NoteCategoryCardWidget(
              //       categoryName: '카테고리1',
              //       categoryIconCodePoint: Icons.map_outlined.codePoint,
              //       width: 0.25.sw,
              //       color: Colors.blue,
              //     ),
              //     NoteCategoryCardWidget(
              //       categoryName: '카테고리2',
              //       categoryIconCodePoint: Icons.map_outlined.codePoint,
              //       width: 0.25.sw,
              //       color: Colors.blue,
              //     ),
              //     NoteCategoryCardWidget(
              //       categoryName: '카테고리3',
              //       categoryIconCodePoint: Icons.map_outlined.codePoint,
              //       width: 0.25.sw,
              //       color: Colors.blue,
              //     ),
              //   ],
              // );
            },
          ),
        ),
      ),
    );
  }
}
