// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:farm_app/screens/activity.dart';
import 'package:farm_app/screens/selectfarm.dart';
import 'package:farm_app/screens/tractor.dart';
import 'package:farm_app/widgets/listview.dart';
import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//
class MainList extends StatefulWidget {
  MainList({Key? key}) : super(key: key);

  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  TextEditingController search1Controller = TextEditingController();

  String dropdownValue = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MySearchBar(context),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 23, right: 10),
                    child: SizedBox(
                      height: 50,
                      width: 280,
                      child: CustomField(
                          prefixicon: Icons.search,
                          hinttext: 'Search',
                          controller: search1Controller,
                          color: Colors.white,
                          colors: Color(0xFF002F40)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1631051145839-ddeb23152286?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 215),
                child: Text(
                  'Please select field',
                  style: TextStyle(
                      color: Color(0xFF002F40),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Selectfarm()),
                            );
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
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://image.shutterstock.com/image-vector/weather-forecast-poster-temperature-humidity-260nw-1711691812.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://images.unsplash.com/photo-1560493676-04071c5f467b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFybXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        name: 'Field',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tractor()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://images.unsplash.com/photo-1444832229138-f82424c2f08a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d29ya2luZyUyMGZhcm1lcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        name: 'Activity',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://images.unsplash.com/photo-1499529112087-3cb3b73cec95?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFybXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        name: 'Crops',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://media.istockphoto.com/photos/aerial-view-of-green-peppers-in-pepper-field-picture-id1268405764?b=1&k=20&m=1268405764&s=170667a&w=0&h=k8RGlde4-MvBkgLG9gF2tB9d1tCG-V20uJRpU8ugmA8=',
                        name: 'Inventory',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://images.unsplash.com/photo-1617717540480-11274a9e28c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhcm1pbmclMjBlcXVpcG1lbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        name: 'Equipments',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://media.istockphoto.com/photos/varieties-of-grains-seeds-and-raw-quino-picture-id671580278?b=1&k=20&m=671580278&s=170667a&w=0&h=CSqBAZDB35Yqt5YKqZCWWC1-lZrX3UdmHHTBO8gobys=',
                        name: 'Storage',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://media.istockphoto.com/photos/group-of-asian-male-farmers-carrying-their-work-tools-walking-back-picture-id1303335062?b=1&k=20&m=1303335062&s=170667a&w=0&h=udQN2XJ4Pmi8mZzbmcG4NIJT0dr-0PwUCd-FDCc7qBA=',
                        name: 'Staff',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      Listview(
                        boxfit: BoxFit.none,
                        imgName:
                            'https://images.unsplash.com/photo-1543286386-713bdd548da4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JhcGh8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        name: 'Reports',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity()));
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
