import 'package:flutter_bloc/flutter_bloc.dart';

class SelectionPageArgs {
  final List<String> selectedNotes;
  //final PreviousPage previousPage;
  final BlocBase? bloc;

  SelectionPageArgs({
    required this.selectedNotes,
    //required this.previousPage,
    this.bloc,
  });
}
