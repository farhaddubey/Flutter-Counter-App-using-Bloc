import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'inc_dec_page.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  // final counterCubit = CounterCubit();
  // Now we dont need instance of CounterCubit as using Bloc Provdier insted we'll be using ' Now we'll be using counter cubit inseide build '
  @override
  Widget build(BuildContext context) {
    // final counter = counterCubit.state; No need to use that while using BlocBuilder
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    // final counterBloc = BlocProvider.of<CounterBloc>(context);
    // As mulitblocprovider is used in main class they can be removed hence commented
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
              BlocBuilder<CounterBloc, int>(
          // Here we've to provide <> CounterCubit args to tell that the bloc is CounterCubit & int to tell that tha args is int type
          // also takes a bloc:  as it's argument ',
          //     bloc: counterBloc, We no need to declare it as we're using MultiBlocProvider
              builder: (context, counter) {
          // While using BlocBuilder as soon as the counterCubit is changed the Entire under builder is rebuilt
              return Text(
          '$counter',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        );
    },
    ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>const IncDecPage())
              );
            },
          ),

        );
      }
}
// Whatever is wrapped inside BlocBuilder that's rebuild on update the counterValue ' in it's bloc argument.
// Why to rebuild the Entire world insted let's only rebuild the text value portion'
