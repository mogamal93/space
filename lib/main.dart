import 'package:flutter/material.dart';
import 'package:space/screens/Planet_details.dart';
import 'screens/Explore.dart';
import 'screens/Home.dart';
import 'theme/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/Home',
      routes: {
        '/Home': (context) =>  const Home(),
        '/Explore': (context) =>  Explore(),
        '/planet': (context) =>  PlanetDetails(),
      },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const Home(),
    );
  }
}
