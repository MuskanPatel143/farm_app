// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// const kTextFieldDecoration = InputDecoration(
//     hintStyle: TextStyle(
//         fontSize: 15.0, color: Color(0xFF607D8B), fontWeight: FontWeight.bold),
//     contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
//     filled: true,
//     fillColor: Color(0xFFB0BEC5),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(15)),
//       borderSide: BorderSide.none,
//     ));
class CustomField extends StatefulWidget {
  const CustomField(
      {Key? key,
      required this.hinttext,
      this.prefixicon,
      this.suffixicon,
      required this.controller,
      this.onTap,
      this.ispass,
      required this.color,
      required this.colors})
      : super(key: key);
  final String hinttext;
  final IconData? prefixicon;
  final IconData? suffixicon;
  final TextEditingController controller;
  final Function()? onTap;
  final bool? ispass;
  final Color color;
  final Color colors;

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget.controller,
        onTap: widget.onTap,
        decoration: InputDecoration(
            hintText: widget.hinttext,
            prefixIcon: widget.prefixicon == null
                ? null
                : Icon(
                    widget.prefixicon,
                    color: widget.color,
                    size: 20,
                  ),
            suffixIcon: widget.suffixicon == null
                ? null
                : Icon(
                    widget.suffixicon,
                    color: widget.color,
                    size: 20,
                  ),
            hintStyle: TextStyle(
                fontSize: 12, color: widget.color, fontWeight: FontWeight.bold),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            filled: true,
            fillColor: widget.colors,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide.none,
            )));
  }
}

// class TextBoxRounded extends StatefulWidget {
//   const TextBoxRounded(
//       {Key? key,
//       required this.hinttext,
//       this.icon,
//       this.ispass = false,
//       required this.controllers,
//       this.validator,
//       this.errorText,
//       this.inputType,
//       this.suffixIcon,
//       this.onTap})
//       : super(key: key);
//   final String hinttext;
//   final IconData? icon;
//   final IconData? suffixIcon;
//   final String? errorText;
//   final TextInputType? inputType;
//   final bool ispass;
//   final Function()? onTap;
//   final TextEditingController controllers;
//   final String? Function(String?)? validator;

//   @override
//   State<TextBoxRounded> createState() => _TextBoxRoundedState();
// }

// class _TextBoxRoundedState extends State<TextBoxRounded> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       child: TextFormField(
//         keyboardType: widget.inputType,
//         // autovalidateMode: AutovalidateMode.disabled,
//         controller: widget.controllers,
//         validator: (value) {
//           if (value!.isEmpty) {
//             return "please enter value";
//           }
//         },

//         obscureText: widget.ispass,
//         onTap: widget.onTap,
//         // ignore: prefer_const_constructors
//         style: TextStyle(
//           color: Colors.grey,
//           fontSize: 18,
//         ),
//         decoration: InputDecoration(
//           hintText: widget.hinttext,
//           prefixIcon: widget.icon == null
//               ? null
//               : Icon(
//                   widget.icon,
//                   color: Colors.grey,
//                 ),

//           suffixIcon: widget.suffixIcon == null
//               ? null
//               : Icon(
//                   widget.suffixIcon,
//                   color: Colors.grey,
//                 ),

//           // prefixIcon: Icon(
//           //   widget.icon,
//           //   color: ThemeClass.greyColor,
//           // ),
//           prefixStyle: TextStyle(color: Colors.grey),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             // ignore: prefer_const_constructors
//             borderSide: BorderSide(
//               color: Colors.grey,
//               width: 1.0,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             // ignore: prefer_const_constructors
//             borderSide: BorderSide(
//               color: Colors.grey,
//               width: 1.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
