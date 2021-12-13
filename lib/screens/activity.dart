//  ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unnecessary_new

// ignore_for_file: unused_field

import 'package:farm_app/screens/planting.dart';
import 'package:farm_app/screens/tractor.dart';
import 'package:farm_app/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum ImageSourceType { gallery, camera }

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 1.14,
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
                        'Activity',
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
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/tractor-spraying-pesticides-on-soybean-field-with-sprayer-at-spring-picture-id966855552?b=1&k=20&m=966855552&s=170667a&w=0&h=xtZdO1-cST47qsG2rGkhCpyC7poG3kGcTrYVC3djIG0=',
                      name: 'Tractor',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tractor()));
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://images.unsplash.com/photo-1587316807833-7008b6d63a4e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBsYW50aW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                      name: 'Planting',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Planting()));
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/ready-to-move-to-a-new-home-picture-id1256012711?b=1&k=20&m=1256012711&s=170667a&w=0&h=3HF-6sD9j4V7ARuQQO0E6Kkm0OWSVvTwli5X98Q6bnc=',
                      name: 'Sowing',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/tractor-spray-fertilizer-on-green-field-picture-id1249522339?b=1&k=20&m=1249522339&s=170667a&w=0&h=KWRDa2PoF6VlEE1zR1O6eoDyspQ9Ksc3-MjL8P9Alj8=',
                      name: 'Fertilizer',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/farmer-is-spraying-herbicide-on-garden-picture-id1270817289?b=1&k=20&m=1270817289&s=170667a&w=0&h=wZXjuc5NBZX57d36sjQFtEdN9twWU77GQI3493fOWZU=',
                      name: 'Pesticides',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/modern-garden-irrigation-system-building-picture-id1297408570?b=1&k=20&m=1297408570&s=170667a&w=0&h=4YmYcxCeIK__RMI1uVAhThdW1dxWMtvQNaaswbZtbCE=',
                      name: 'Irrigation',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://media.istockphoto.com/photos/senior-farmer-sitting-on-field-picture-id542086852?b=1&k=20&m=542086852&s=170667a&w=0&h=9wLqVQjFUWn4V4TWKm1JZbsZqOAXKRYWM_PuhL-su4A=',
                      name: 'Observation',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.fill,
                      imgName:
                          'https://media.istockphoto.com/photos/spraying-pesticide-with-portable-sprayer-to-eradicate-garden-weeds-in-picture-id1174599934?b=1&k=20&m=1174599934&s=170667a&w=0&h=yQsVjaF4_0tbCWiNENNyw3i24eDZVsScJnB5T224x_Q=',
                      name: 'Labour/Animal Weeding',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://images.unsplash.com/photo-1614977645968-6db1d7798ac7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aGFydmVzdGluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                      name: 'Harvesting',
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Listview(
                      boxfit: BoxFit.cover,
                      imgName:
                          'https://images.unsplash.com/photo-1524522173746-f628baad3644?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdvb2RzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                      name: 'Sold Goods',
                    )),
              ]))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Color(0xFF002F40),
      ),
    );
  }
}
