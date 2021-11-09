import 'package:flutter/material.dart';
import 'package:my_flutter_application/utils/routes.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.homePage: (context) => const HomePage(),
      },
    );
  }
}