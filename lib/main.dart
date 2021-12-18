import 'package:flutter/material.dart';

import 'package:bestjob/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Best Job',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141)
      ),
        debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
