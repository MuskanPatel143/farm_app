// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:farm_app/screens/otp.dart';
import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController mbnController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.19,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 70, bottom: 15, right: 300),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF002F40),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            '〱',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 27, bottom: 5),
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: const Color(0xFF002F40)),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(right: 10, bottom: 20),
                      child: Text(
                          'Please enter the following details to create your account.',
                          style: TextStyle(
                              fontSize: 13, color: Color(0xFF716161))))
                ],
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        controller: firstController,
                        hinttext: 'First name',
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        hinttext: 'Last name',
                        controller: lastController,
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        controller: emailController,
                        hinttext: 'Email',
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        controller: mbnController,
                        hinttext: 'Mobile number',
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        controller: passwordController,
                        hinttext: 'Password',
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 25),
                      child: CustomField(
                        controller: confirmpasswordController,
                        hinttext: 'Confirm password',
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF002F40),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 35),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Verify()));
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
