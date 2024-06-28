import 'package:book_store/core/Router/ErrorRoute.dart';
import 'package:book_store/core/Ui/Animation/Logoo.dart';
import 'package:flutter/material.dart';

class Approuter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Logo':
        return MaterialPageRoute(builder: (_) => const LogoP());
      default:
      return MaterialPageRoute(builder: (_)=> const ErrorRoute());
    }
  }
}
