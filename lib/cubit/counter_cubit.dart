import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<int> {
  CounterCubit():super(0);
  void increment() {
    emit(state+1);
  }
  void decrement(){
    if (state==0){
      return;
    }
    emit(state-1);
  }
}
// We need to pass the initial state to use the Cubit. Here the initial value is 0