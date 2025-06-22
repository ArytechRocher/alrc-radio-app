
import 'package:flutter/material.dart';
import 'ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALRC Radio Business',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
