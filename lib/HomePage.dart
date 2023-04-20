import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static double cornerRadious = 30.0;
 

  Widget _innerItems(){
    return Column(
      children: [
        Image.asset("images/dog.png", fit: BoxFit.cover,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: methodOne(), floatingActionButton: const Icon(Icons.abc),);
    }

  // ignore: non_constant_identifier_names
 

  

  Widget methodTwo() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cornerRadious),
            topRight: Radius.circular(cornerRadious),
          )),
          child: Container(
            height: 500,
            color: Colors.black,child: _innerItems(),
          ),
        ),
      ],
    );
  }

  Widget methodOne() {
    return Container(
        color: Colors.amber,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 400,
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
