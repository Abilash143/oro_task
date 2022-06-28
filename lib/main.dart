import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:oro_task/controller/change_cubit.dart';
import 'package:oro_task/controller/language_observer.dart';
import 'package:oro_task/view/ekyc.dart';
import 'package:oro_task/view/home_screen.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: LanguageObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangeCubit>(
          create: (BuildContext context) => ChangeCubit(),
        ),
      ],
      child: GetMaterialApp(
        title: 'oro task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
