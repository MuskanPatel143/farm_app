// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_this

import 'package:farm_app/screens/list.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

// class Verify extends StatefulWidget {
//   @override
//   PinPutTestState createState() => PinPutTestState();
// }

// class PinPutTestState extends State<Verify> {
//   final TextEditingController _pinPutController = TextEditingController();
//   final FocusNode _pinPutFocusNode = FocusNode();

//   BoxDecoration get _pinPutDecoration {
//     return BoxDecoration(
//       color: Color(0xFFB0BEC5),
//       border: Border.all(
//         color: Color(0xFFB0BEC5),
//       ),
//       borderRadius: BorderRadius.circular(15.0),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.green,
//         hintColor: Colors.green,
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Builder(
//           builder: (context) {
//             return Center(
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       color: Colors.white,
//                       margin: const EdgeInsets.all(20.0),
//                       padding: const EdgeInsets.all(20.0),
//                       child: PinPut(
//                         fieldsCount: 4,
//                         focusNode: _pinPutFocusNode,
//                         controller: _pinPutController,
//                         submittedFieldDecoration: _pinPutDecoration.copyWith(
//                           borderRadius: BorderRadius.circular(17),
//                           border: Border.all(
//                             color: Color(0xFFB0BEC5),
//                           ),
//                         ),
//                         selectedFieldDecoration: _pinPutDecoration,
//                         followingFieldDecoration: _pinPutDecoration.copyWith(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(
//                             color: Color(0xFFB0BEC5),
//                           ),
//                         ),
// //                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
// }

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Color(0xFFB0BEC5),
      border: Border.all(
        color: Color(0xFFB0BEC5),
      ),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
                        const EdgeInsets.only(top: 70, bottom: 20, right: 300),
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
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'We have just sent you an SMS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Color(0xFF002F40)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5, left: 25),
                        child: Text(
                          'with a verification code.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Color(0xFF002F40)),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(right: 132, bottom: 30),
                      child: Text('Please enter your verification below.',
                          style: TextStyle(
                              fontSize: 13, color: Color(0xFF716161))))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 50.0, left: 50),
                padding: const EdgeInsets.only(top: 50, bottom: 30),
                child: PinPut(
                  eachFieldConstraints:
                      const BoxConstraints(minHeight: 50, minWidth: 50),
                  fieldsCount: 4,
                  focusNode: _pinPutFocusNode,
                  controller: _pinPutController,
                  submittedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFB0BEC5),
                    ),
                  ),
                  selectedFieldDecoration: _pinPutDecoration,
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFB0BEC5),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Don't get a code ?",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF1F4C59),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => SignUp(),
                        //     ));
                      },
                      child: TextButton(
                        child: Text(
                          'Resend',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF6AB187),
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainList()));
                        },
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
