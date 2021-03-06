import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_fast/data/game/bloc.dart';
import 'package:math_fast/data/game/model.dart';
import 'package:math_fast/router/route.dart';

void main() {
  runApp(MathFastApp());
}

class MathFastApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GamesBloc>(
          create: (BuildContext context) => GamesBloc(Games()),
        )
      ],
      child: MaterialApp(
        title: 'MathFast',
        onGenerateRoute: onGeneratedRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme(
            background: Colors.white,
            onBackground: Color(0xff000000),
            primary: Color(0xff009ECC),
            onPrimary: Color(0xff000000),
            primaryVariant: Color(0xff34B1DA),
            secondary: Color(0xff54086B),
            onSecondary: Color(0xff000000),
            secondaryVariant: Color(0xff911BB5),
            surface: Colors.white,
            onSurface: Color(0xff000000),
            error: Color(0xffFF0000),
            onError: Color(0xff000000),
            brightness: Brightness.light,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
