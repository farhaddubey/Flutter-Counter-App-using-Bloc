import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>CounterBloc()),
        BlocProvider(create: (_)=>CounterCubit()),
      ],
      // BlocProvider is used to pass args from one block to another block
      child: MaterialApp(
            title: 'Counter Cubit',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true

            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page')
        ),
    );
  }

}