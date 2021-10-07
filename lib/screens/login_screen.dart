// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';

class LoginScreen extends StatefulWidget {
//  TextEditingAction usernameController = TextEditingController();
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = 'Back!';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.only(left: 50, right: 50),
            // shrinkWrap: true,
            // scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/logo.png',
                // fit: BoxFit.fill,
                height: 150,
              ),
              // Text(
              //   'Welcome $username',
              //   textAlign: TextAlign.center,
              // ),
              SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Welcome ",
                    style: kfontSizeColor,
                    children: <TextSpan>[
                      TextSpan(
                          text: '$username',
                          style: TextStyle(
                            color: customColor,
                            fontSize: 24,
                          ))
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      focusNode: FocusNode(canRequestFocus: true),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.assignment_ind_outlined),
                        hintText: "Enter Username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      focusNode: FocusNode(canRequestFocus: true),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_rounded),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                          hintText: "Enter Password",
                          labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homeScreen');
                },
                child: Text(
                  'Login',
                  style: kfontSize,
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 40), shape: StadiumBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/registerScreen');
                  },
                  child: RichText(
                      text: TextSpan(
                          text: "Don't have an Account?  ",
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                          // style: DefaultTextStyle.of(context).style,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <TextSpan>[
                        // ignore: prefer_const_constructors
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                color: customColor))
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
