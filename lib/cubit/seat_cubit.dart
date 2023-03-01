import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super(([]));

  void selectSeat(String id) {
    state.add(id);
    emit(state);
  }

  @override
  void onChange(Change<List<String>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(state);
  }
}
