import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/api_service/dio_service.dart';
import 'package:quran_app/core/observer/bloc_observer.dart';
import 'package:quran_app/core/service_locator/locator.dart';
import 'package:quran_app/features/quran/presentation/controller/quran_cubit/quran_cubit.dart';
import 'package:quran_app/features/quran/presentation/ui_screen/view_products.dart';

void main() {
  init();
  Bloc.observer = QuranBlocObserver();
  DioFinalHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => QuranCubit(),
        child: ViewQuran(),
      ),
    );
  }
}

