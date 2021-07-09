// @dart=2.9
import 'package:flutter/material.dart';

import 'Screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54), accentColor: Color(0xFF128C7E)
      ),
      home: HomeScreen(),
    );
  }
}
