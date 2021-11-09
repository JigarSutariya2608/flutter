import 'package:flutter/material.dart';
import 'package:my_flutter_application/utils/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/image/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        label: Text("Username"),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        label: Text("Password"),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6.";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ignore: avoid_print
                        // print("login success");
                        if (_formkey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.homePage);
                        }
                      },
                      child: const Text("Login"),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(120, 40)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
