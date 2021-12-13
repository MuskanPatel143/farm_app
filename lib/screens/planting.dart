//  ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unnecessary_new

// ignore_for_file: unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable

import 'dart:io';

import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

enum ImageSourceType { gallery, camera }

class Planting extends StatefulWidget {
  const Planting({Key? key}) : super(key: key);

  @override
  _PlantingState createState() => _PlantingState();
}

class _PlantingState extends State<Planting> {
  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
  }

  var _image;
  var imagePicker;
  var type;

  TextEditingController name1Controller = TextEditingController();

  TextEditingController farm1Controller = TextEditingController();
  TextEditingController ap1Controller = TextEditingController();
  TextEditingController calc1Controller = TextEditingController();
  TextEditingController amtController = TextEditingController();

  TextEditingController dateCtl = TextEditingController();
  TextEditingController dateCtl1 = TextEditingController();
  TextEditingController dateCtl2 = TextEditingController();
  // TextEditingController dateCtl3 = TextEditingController();

  String dropdownValue = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 53, bottom: 30, left: 20, right: 50),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF002F40),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Planting',
                      style: TextStyle(
                          color: Color(0xFF002F40),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 25, left: 40),
                    child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF002F40),
                          ),
                          // child: Padding(
                          //   padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '✓',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 225),
                child: Text(
                  'Please select field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: SizedBox(
                    height: 45,
                    width: 355,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF002F40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          hint: Text(
                              'Select a vehicle from dropdown menu list         '),
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          iconEnabledColor: Colors.grey,
                          elevation: 16,
                          style: const TextStyle(color: Colors.grey),
                          underline: Container(
                            height: 2,
                            color: Color(0xFF002F40),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Selectfarm()),
                            // );
                          },
                          items: <String>['Select', 'Farm 1', 'Free']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              // onPressed: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Selectfarm()),
                              //   );
                              // },
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 174, top: 13),
                child: Text(
                  "Please enter driver's name.",
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: SizedBox(
                    height: 45,
                    width: 355,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF002F40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          hint: Text(
                              'Select a vehicle from dropdown menu list         '),
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          iconEnabledColor: Colors.grey,
                          elevation: 16,
                          style: const TextStyle(color: Colors.grey),
                          underline: Container(
                            height: 2,
                            color: Color(0xFF002F40),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Selectfarm()),
                            // );
                          },
                          items: <String>['Select', 'Farm 1', 'Free']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              // onPressed: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Selectfarm()),
                              //   );
                              // },
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 150, top: 13),
                child: Text(
                  'Please add images of the field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          var source = type == ImageSourceType.camera
                              ? ImageSource.camera
                              : ImageSource.gallery;
                          XFile image = await imagePicker.pickImage(
                              source: source,
                              imageQuality: 50,
                              preferredCameraDevice: CameraDevice.front);
                          setState(() {
                            _image = File(image.path);
                          });
                        },
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              color: Color(0xFFB0BEC5),
                              borderRadius: BorderRadius.circular(15)),
                          child: _image != null
                              ? Image.file(
                                  _image,
                                  width: 110.0,
                                  height: 110.0,
                                  fit: BoxFit.fill,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFB0BEC5),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 110,
                                  height: 110,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey[800],
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          var source = type == ImageSourceType.camera
                              ? ImageSource.camera
                              : ImageSource.gallery;
                          XFile image = await imagePicker.pickImage(
                              source: source,
                              imageQuality: 50,
                              preferredCameraDevice: CameraDevice.front);
                          setState(() {
                            _image = File(image.path);
                          });
                        },
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              color: Color(0xFFB0BEC5),
                              borderRadius: BorderRadius.circular(15)),
                          child: _image != null
                              ? Image.file(
                                  _image,
                                  width: 110.0,
                                  height: 110.0,
                                  fit: BoxFit.fill,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFB0BEC5),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 110,
                                  height: 110,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey[800],
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          var source = type == ImageSourceType.camera
                              ? ImageSource.camera
                              : ImageSource.gallery;
                          XFile image = await imagePicker.pickImage(
                              source: source,
                              imageQuality: 50,
                              preferredCameraDevice: CameraDevice.front);
                          setState(() {
                            _image = File(image.path);
                          });
                        },
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              color: Color(0xFFB0BEC5),
                              borderRadius: BorderRadius.circular(15)),
                          child: _image != null
                              ? Image.file(
                                  _image,
                                  width: 110.0,
                                  height: 110.0,
                                  fit: BoxFit.fill,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFB0BEC5),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 110,
                                  height: 110,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey[800],
                                  ),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 230, top: 20),
                child: Text(
                  'Please select date.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 3),
                    child: Text(
                      'Plant Date',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, bottom: 3),
                    child: Text(
                      'Expected harvesting Date',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white70),
                      controller: dateCtl,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.white70,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.white54),
                          hintText: "Ex. Insert your dob",
                          filled: true,
                          fillColor: Color(0xFF002F40)),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(new FocusNode());

                        date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)))!;

                        dateCtl.text =
                            ('${date.day}/${date.month}/${date.year}');
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white70),
                      controller: dateCtl1,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.white70,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.white54),
                          hintText: "Ex. Insert your dob",
                          filled: true,
                          fillColor: Color(0xFF002F40)),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(new FocusNode());

                        date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)))!;

                        dateCtl1.text =
                            ('${date.day}/${date.month}/${date.year}');
                        // ('${date.hour}/${date.minute}');
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 130, top: 20),
                child: Text(
                  'Please enter amount of plant used.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 200),
                child: CustomField(
                    hinttext: '100 KG Seeds',
                    controller: amtController,
                    color: Colors.grey,
                    colors: Color(0xFF002F40)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 175, top: 20),
                child: Text(
                  'Please enter cost of plants.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 200),
                child: CustomField(
                    hinttext: '200000 RS',
                    controller: amtController,
                    color: Colors.grey,
                    colors: Color(0xFF002F40)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 140, top: 20),
                child: Text(
                  "Please select number of labours.",
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: SizedBox(
                    height: 45,
                    width: 355,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF002F40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          hint: Text(
                              'Select a vehicle from dropdown menu list         '),
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          iconEnabledColor: Colors.grey,
                          elevation: 16,
                          style: const TextStyle(color: Colors.grey),
                          underline: Container(
                            height: 2,
                            color: Color(0xFF002F40),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Selectfarm()),
                            // );
                          },
                          items: <String>['Select', 'Farm 1', 'Free']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              // onPressed: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Selectfarm()),
                              //   );
                              // },
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 306, top: 13),
                child: Text(
                  'Notes:',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                          hintText: 'Insert text here....',
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                            color: Colors.blueGrey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 75, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xFF002F40),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          )))),
            ])));
  }
}
