// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fproject/Utils/Routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image(
                image: AssetImage("assets/login_img.png"),
                alignment: Alignment.topRight,
                width: 300,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 22),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    child: Text(
                      "SignUp",
                      style: TextStyle(fontSize: 22),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.signRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
