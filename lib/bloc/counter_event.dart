part of 'counter_bloc.dart';
sealed class CounterBlocDefault {}
// sealed provides warning for all inherited class while applying inside switch so sealed classes can also be used
class CounterIncremented extends CounterBlocDefault {}  //that's increment event
class CounterDecremented extends CounterBlocDefault {}   //that's decrement event