import 'package:flutter/material.dart';
import 'package:ppdt/Screens/screen1.dart';
import './Screens/screen7.dart';
import 'Screens/onboardingscreen.dart';
import 'Screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orange,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange)),
      title: 'Flutter Demo',
      home: LoggedInS7(),
    );
  }
}
