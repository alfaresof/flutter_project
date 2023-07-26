import 'package:flutter/material.dart';
import 'package:flutter_project/list.dart';
import 'package:flutter_project/number.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/quote/homescreen.dart';
import 'package:flutter_project/quote/quote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyProfile(),
      // home: Number(),
      // home: ListNames(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        'quoutes': (context) => Quotes(),

        //first day practice
        'profile': (context) => MyProfile(),
        'list': (context) => ListNames(),
        'number': (context) => Number(),
      },
    );
  }
}
