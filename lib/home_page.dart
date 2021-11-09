import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/drawer.dart';

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
        child: Text("Welcome $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
