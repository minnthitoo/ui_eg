import 'package:flutter/material.dart';
import 'package:ui_eg/screen/check.dart';
import 'package:ui_eg/screen/home.dart';
import 'package:ui_eg/screen/payment.dart';
import 'package:ui_eg/screen/receive.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    )
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<Widget> _screens = [
    const Home(),
    const Check(),
    const Payment(),
    const Receive()
  ];
  final Widget _home = const Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Electricity Payment'),
        backgroundColor: Color(0xff12c2e9),
        elevation: 0,
      ),
      body: Receive(),
    );
  }
}

