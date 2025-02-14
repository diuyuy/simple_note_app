import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/note.dart';

part 'waste_basket_bloc.freezed.dart';
part 'waste_basket_event.dart';
part 'waste_basket_state.dart';

class WasteBasketBloc extends Bloc<WasteBasketEvent, WasteBasketState> {
  WasteBasketBloc() : super(_Initial(notes: <Note>[])) {
    on<WasteBasketEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
