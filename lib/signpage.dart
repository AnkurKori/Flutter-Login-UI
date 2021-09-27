// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fproject/Utils/Routes.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              //Text("Welcome", style: TextStyle(fontSize: 40.0)),
              Image(
                image: AssetImage("assets/loginIcon.png"),
                height: 100,
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.account_circle),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Create Password",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
