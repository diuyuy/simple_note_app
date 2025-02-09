import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/notes_list_widget.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: NotesListWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/create'),
        child: Icon(Icons.add),
      ),
    );
  }
}
