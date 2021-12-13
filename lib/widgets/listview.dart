// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_label

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({
    Key? key,
    required this.name,
    required this.imgName,
    this.onTap,
    this.boxfit,
  }) : super(key: key);
  final String name;
  final String imgName;
  final Function()? onTap;
  final BoxFit? boxfit;

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Stack(
          children: [
            InkWell(
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(widget.imgName),
                        fit: widget.boxfit)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(1.0),
                      Colors.white.withOpacity(0.5)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text(
                widget.name,
                style: TextStyle(
                    color: Color(0xFF002F40),
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
  // return Stack(
  //   children: [
  //     InkWell(
  //       onTap: () {
  //         widget.onPressed;
  //       },
  //       child: Container(
  //         width: 1000,
  //         height: 65,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //           image: DecorationImage(
  //               image: NetworkImage(widget.imgName), fit: widget.boxfit),
  //         ),
  //       ),
  //     ),
  //     Container(
  //       child: Padding(
  //         padding: const EdgeInsets.only(top: 23, left: 20),
  //         child: Text(
  //           widget.name,
  //           style: TextStyle(
  //               color: Color(0xFF002F40),
  //               fontWeight: FontWeight.bold,
  //               fontSize: 15),
  //         ),
  //       ),
  //       width: 1000,
  //       height: 65,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10),
  //           gradient: LinearGradient(
  //             begin: FractionalOffset.centerLeft,
  //             end: FractionalOffset.bottomRight,
  //             colors: [
  //               Colors.white.withOpacity(0.95),
  //               Colors.white.withOpacity(0.1),
  //             ],
  //           )),
  //     ),
  //   ],
  // );
}
