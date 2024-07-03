import 'package:bloc/bloc.dart';
import 'package:book_store/core/Router/OngenerateRoute.dart';
import 'package:book_store/core/Ui/Animation/Logoo.dart';
import 'package:book_store/core/helper/BlocObserve.dart';
import 'package:book_store/core/helper/Diohelper.dart';
import 'package:flutter/material.dart';

void main() async {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const LogoP(),
      onGenerateRoute: (settings) => Approuter().onGenerateRoute(settings),
    );
  }
}
