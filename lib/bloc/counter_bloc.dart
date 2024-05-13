import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
class CounterBloc extends Bloc<CounterBlocDefault, int> {
  CounterBloc() : super(0){
    on<CounterIncremented>((event, emit){
      emit(state+1);
    });
    on<CounterDecremented>((event, emit){
      emit(state-1);
    });
  }
}