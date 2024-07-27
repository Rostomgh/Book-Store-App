import 'package:bloc/bloc.dart';
import 'package:book_store/core/Router/OngenerateRoute.dart';
import 'package:book_store/core/Service/ApiService.dart';
import 'package:book_store/core/Ui/Animation/Logoo.dart';
import 'package:book_store/core/helper/BlocObserve.dart';
import 'package:book_store/core/helper/Diohelper.dart';
import 'package:book_store/features/Home/data/Domain/Repo/GetBookImpl.dart';
import 'package:book_store/features/Home/presentation/Logic/GetBook/get_book_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize ApiService here if needed
    final apiService = ApiService(); 
    final getDataImpl = GetDataImpl(apiService: apiService);

    return BlocProvider(
      create: (context) => GetBookBloc(getDataImpl:getDataImpl),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: const LogoP(),
        onGenerateRoute: Approuter().onGenerateRoute,
      ),
    );
  }
}
