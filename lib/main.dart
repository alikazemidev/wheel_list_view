import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2d2f91),
      ),
      backgroundColor: Color(0xff2d2f41),
      body: ListWheelScrollView(
        physics: BouncingScrollPhysics(),
        perspective: .009,
        itemExtent: 200,
        children: List.generate(20, (index) {
          return Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
          );
        }),
      ),
    );
  }
}
