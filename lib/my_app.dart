import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test/HomePage.dart';
import 'package:test/list_sample.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const ListSample(),
    );
  }
}