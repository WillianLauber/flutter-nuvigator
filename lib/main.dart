import 'package:flutter/material.dart';
import 'package:proj/router_generator.dart';
import 'package:proj/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: 'home',
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}