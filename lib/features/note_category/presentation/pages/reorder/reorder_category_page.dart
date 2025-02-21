import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../bloc/note_category_bloc.dart';
import '../../widgets/note_category_card_widget.dart';

class ReorderCategoryPage extends StatefulWidget {
  const ReorderCategoryPage({super.key, required this.currentOrders});

  final List<String> currentOrders;

  @override
  State<ReorderCategoryPage> createState() => _ReorderCategoryPageState();
}

class _ReorderCategoryPageState extends State<ReorderCategoryPage> {
  late List<String> orders;

  @override
  void initState() {
    super.initState();
    orders = widget.currentOrders;
  }

  void onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final item = orders.removeAt(oldIndex);
      orders.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('ReorderCategoryPage.reorderCategories'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              context
                  .read<NoteCategoryBloc>()
                  .add(NoteCategoryEvent.categoryReordered(newOrders: orders));
            },
            child: Text('ReorderCategoryPage.done'.tr()),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocListener<NoteCategoryBloc, NoteCategoryState>(
            listener: (context, state) {
              context.pop();
            },
            child: Builder(
              builder: (context) {
                final categories =
                    context.watch<NoteCategoryBloc>().state.categories;
                final notes = context.watch<NoteBloc>().state.notes;

                return ReorderableListView.builder(
                  proxyDecorator: (child, index, animation) {
                    return Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      child: child,
                    );
                  },
                  itemBuilder: (context, index) {
                    final category = categories
                        .firstWhere((category) => category.id == orders[index]);
                    final int noteCount = notes
                        .where((note) => note.category == category.id)
                        .length;

                    return NoteCategoryCardWidget(
                      key: Key(category.id),
                      id: category.id,
                      categoryName: category.categoryName,
                      categoryIconCodePoint: category.iconCode,
                      noteCount: noteCount,
                      index: index,
                      color: Color.from(
                        alpha: category.categoryColorA,
                        red: category.categoryColorR,
                        green: category.categoryColorG,
                        blue: category.categoryColorB,
                      ),
                      enabledOrder: true,
                    );
                  },
                  itemCount: orders.length,
                  onReorder: onReorder,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
