// ignore_for_file: prefer_const_constructors

import 'package:farm_app/screens/signup.dart';
import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // late AnimationController controller;
  // @override
  // void initState() {
  //   super.initState();
  //   controller =
  //       AnimationController( duration: Duration(seconds: 4), vsync: , );
  //   controller.repeat();
  // }
  bool isChecked = false;
  bool a = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.2,
          // color: Color(0xfff1f8e9),
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //       Color(0x665ac18e),
          //       Color(0x995ac18e),
          //       Color(0xcc5ac18e),
          //       Color(0xfff1f8e9),
          //     ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'images/image1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'F A R M',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF002F40)),
                        ),
                        Text(
                          'MANAGEMENT',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF002F40)),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 60, left: 25, bottom: 5),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Color(0xFF002F40)),
                          ),
                        ),
                        // AnimatedBuilder(
                        //   animation: controller,
                        //   child: Container(
                        //     child: Image(image: AssetImage()),
                        //   ),
                        // ),
                        // builder:(BuildContext context,Widget _widget){
                        //   return Transform.rotate(angle: controller.value*6.3,child: _widget,);
                        // }
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(right: 175, bottom: 30),
                        child: Text('Please login to your account.',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xFF716161))))
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      child: CustomField(
                        hinttext: "Email/Mobile number",
                        controller: emailController,
                        prefixicon: Icons.email,
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      child: CustomField(
                        ispass: a,
                        hinttext: "Password",
                        controller: passwordController,
                        prefixicon: Icons.lock,
                        suffixicon:
                            a ? Icons.visibility_off : Icons.remove_red_eye,
                        color: Color(0xFF607D8B),
                        colors: Color(0xFFB0BEC5),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 25),
                    //   child: TextField(
                    //     onChanged: (value) {},
                    //     keyboardType: TextInputType.emailAddress,
                    //     style:
                    //         const TextStyle(color: Colors.black, fontSize: 20),

                    //   decoration: kTextFieldDecoration.copyWith(
                    //     hintText: 'Email/Mobile number',
                    //     prefixIcon: Icon(
                    //       Icons.email,
                    //       color: Color(0xFF607D8B),
                    //       size: 20,
                    //     ),
                    // ),
                    // ),

                    // Padding(
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 10, horizontal: 25),
                    // child: TextField(
                    //   obscureText: a,
                    //   // keyboardType: TextInputType.visiblePassword,
                    //   style:
                    //       const TextStyle(color: Colors.black, fontSize: 20),
                    // decoration: kTextFieldDecoration.copyWith(
                    // hintText: 'Password',
                    // prefixIcon: Icon(
                    //       Icons.lock,
                    //       color: Color(0xFF607D8B),
                    //       size: 20,
                    //     ),
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     a ? Icons.visibility_off : Icons.remove_red_eye,
                    //     size: 20,
                    //   ),
                    // onPressed: () {
                    // setState(() {
                    //   a = !a;
                    // });
                    // },
                    // )),
                    // ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              checkColor: Color(0xFF1F4C59),
                              activeColor: Color(0xFF1F4C59),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                        ),
                        Text(
                          'Remember me?',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1F4C59),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF1F4C59),
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF002F40),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF1F4C59),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF6AB187),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
