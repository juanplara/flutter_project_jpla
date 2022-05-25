import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jpla_project/view/counter.dart';
import 'package:jpla_project/view/counter_screen.dart';
import 'package:jpla_project/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter_screen(),
    );
  }
}
