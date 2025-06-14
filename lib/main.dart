import 'package:flutter/material.dart';

void main() {
  runApp(const Homescreen());
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
appBar: AppBar(title: const Text('Demo Home'),centerTitle:true ,),

      ),
    );
  }
}
