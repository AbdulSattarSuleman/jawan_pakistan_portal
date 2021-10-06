// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

TextEditingController password = TextEditingController();
TextEditingController confirmPassword = TextEditingController();
TextEditingController username = TextEditingController();
TextEditingController email = TextEditingController();
final _formKeyRegistration = GlobalKey<FormState>();
bool _validate = false;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 50, right: 50),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Let's Get Started!",
              style: kfontSizeColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Create an account at Jawan Pakistan to get all updates",
              style: kNormalText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              // key: _formKeyRegistration,
              child: Column(
                children: [
                  TextFormField(
                    controller: username,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.assignment_ind_outlined),
                      contentPadding: EdgeInsets.only(left: 50),
                      hintText: "Enter Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        // username = value;
                      });
                    },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     Get
                    //   }
                    // },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.alternate_email),
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        // username = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                      hintText: "Enter Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                      hintText: "Confirm Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/homeScreen');
                setState(() {
                  // if
                });
              },
              child: Text(
                'Register',
                style: kfontSize,
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 40), shape: StadiumBorder()),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
