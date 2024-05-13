import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // onPressed: ()=>counterCubit.increment(),
            onPressed: () {
              counterCubit.increment();
              // setState(() {});
              // What if we don not want ot use set state
              // That's we have to shift towards using BlocBuilder'
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            // onPressed: ()=>counterCubit.increment(),
            onPressed: () {
              counterCubit.decrement();
              // setState(() {});
              // What if we don not want ot use set state
              // That's we have to shift towards using BlocBuilder'
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ), // This tr
        ],
      ),
    );
  }
}
// Now the problem how we'll be accessing out cubit. No way. the page is changed how can we access from nay page we want.
// the way si' using BlocPovider

