// ignore_for_file: prefer_const_constructors

import 'package:farm_app/screens/farm1.dart';
import 'package:farm_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Selectfarm extends StatefulWidget {
  const Selectfarm({Key? key}) : super(key: key);

  @override
  _SelectfarmState createState() => _SelectfarmState();
}

class _SelectfarmState extends State<Selectfarm> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 53, bottom: 30, left: 20),
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
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                    height: 42,
                    width: 240,
                    child: CustomField(
                        prefixicon: Icons.search,
                        hinttext: 'Search',
                        controller: searchController,
                        color: Colors.white,
                        colors: Color(0xFF002F40)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: SizedBox(
                    height: 40,
                    width: 40,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              children: [
                Container(
                  width: 1000,
                  height: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1500076656116-558758c991c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZhcm18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, left: 10),
                    child: Text(
                      '  Farm 1',
                      style: TextStyle(
                          color: Color(0xFF002F40),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  width: 1000,
                  height: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.95),
                          Colors.white.withOpacity(0.1),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Farm1()));
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Color(0xFF002F40),
      ),
    );
  }
}
