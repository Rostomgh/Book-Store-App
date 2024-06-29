import 'package:book_store/core/Router/ErrorRoute.dart';
import 'package:book_store/core/Ui/Animation/Logoo.dart';
import 'package:book_store/features/GetStartedScreen/GetStartedScreen.dart';
import 'package:book_store/features/Home/view/HomeScreen.dart';
import 'package:flutter/material.dart';

class Approuter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Logo':
        return MaterialPageRoute(builder: (_) => const LogoP());
        case 'start':
        return MaterialPageRoute(builder: (_)=> const GetStartedP());
        case 'home':
        return MaterialPageRoute(builder: (_)=> const HomeP());
      default:
      return MaterialPageRoute(builder: (_)=> const ErrorRoute());
    }
  }
}
