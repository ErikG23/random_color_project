import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:random_color_project/core/utils/color_generator.dart';
import 'package:random_color_project/features/color_changer/data/repositories/color_repository_impl.dart';
import 'package:random_color_project/features/color_changer/presentation/bloc/color_bloc.dart';
import 'package:random_color_project/features/color_changer/presentation/bloc/color_event.dart';
import 'package:random_color_project/features/color_changer/presentation/pages/color_page.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Color App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) {
          final colorGenerator = ColorGenerator();
          final colorRepository = ColorRepositoryImpl(
            colorGenerator: colorGenerator,
          );
          final colorBloc = ColorBloc(
            colorRepository: colorRepository,
          );

          colorBloc.add(const InitializeColorEvent());

          return colorBloc;
        },
        child: const ColorPage(),
      ),
    );
  }
}
