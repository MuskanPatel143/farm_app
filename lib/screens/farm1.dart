// ignore_for_file: prefer_const_constructors

import 'package:farm_app/screens/editfield.dart';
import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Farm1 extends StatefulWidget {
  const Farm1({Key? key, this.onTap}) : super(key: key);
  final Function()? onTap;

  @override
  _Farm1State createState() => _Farm1State();
}

class _Farm1State extends State<Farm1> {
  String dropdownValue = 'edit';
  TextEditingController farmController = TextEditingController();

  TextEditingController apController = TextEditingController();

  TextEditingController calcController = TextEditingController();

  TextEditingController cropController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.45,
          child: Column(
            children: [
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
                      'Farm 1',
                      style: TextStyle(
                          color: Color(0xFF002F40),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 25, left: 30),
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
                          child: Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditField()));
                                },
                                child: Text(
                                  '⋮',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            // ),
                            // DropdownButton<String>(
                            //   hint: Text('⋮'),
                            //   iconSize: 0,
                            //   style: const TextStyle(color: Colors.grey),
                            //   underline: Container(
                            //     height: 2,
                            //     color: Color(0xFF002F40),
                            //   ),
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //       builder: (context) =>),
                            //     // );
                            //   },
                            //   items: <String>[
                            //     'edit',
                            //     'delete',
                            //     'move'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       // onTap: () {
                            //       //   Navigator.push(
                            //       //     context,
                            //       //     MaterialPageRoute(
                            //       //         builder: (context) => Selectfarm()),
                            //       //   );
                            //       // },
                            //       child: Text(
                            //         value,
                            //       ),
                            //     );
                            //   }).toList(),
                            // ),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 250),
                child: Text(
                  'Name of field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomField(
                    hinttext: 'Farm 1',
                    controller: farmController,
                    color: Colors.white,
                    colors: Color(0xFF002F40)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, right: 182),
                child: Text(
                  'Name of allotted person.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomField(
                    hinttext: 'A...P...',
                    controller: apController,
                    color: Colors.white,
                    colors: Color(0xFF002F40)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, right: 226),
                child: Text(
                  'Image of the field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1506801842916-2927e4dcf498?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhcm18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFybXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1535649900424-c09963c4fd8e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhcm18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, right: 208),
                child: Text(
                  'Location of the field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: 1000,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1521661488642-d86e85a90de2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdvb2dsZSUyMG1hcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5, right: 233),
                child: Text(
                  'Area of the field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 160),
                child: Text(
                  'Drawn border indicates area of your field.',
                  style: TextStyle(
                      color: Color(0xFF716161),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: 1000,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1521661488642-d86e85a90de2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdvb2dsZSUyMG1hcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, right: 185),
                child: Text(
                  'Calculated area of field.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomField(
                    hinttext: '15.5 Acres',
                    controller: calcController,
                    color: Colors.white,
                    colors: Color(0xFF002F40)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, right: 250),
                child: Text(
                  'Name of crop.',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomField(
                    hinttext: 'Wheat',
                    controller: cropController,
                    color: Colors.white,
                    colors: Color(0xFF002F40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
