import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Jigar";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
