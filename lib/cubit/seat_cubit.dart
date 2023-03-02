import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super(([]));

  void selectSeat(String id) {
    print('prev state: $state');
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    print('new state: $state');
    emit(state);
  }

// mengecek apakah index id -1(data tidak ada) namun jika selain -1 maka data ada
  bool isSelected(String id) {
    int index = state.indexOf(id);

    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void onChange(Change<List<String>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(state);
  }
}
