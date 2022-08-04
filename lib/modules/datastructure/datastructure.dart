
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../homepage/homepage.dart';

class Datastructuremcq extends StatefulWidget {
  @override
  State<Datastructuremcq> createState() => _DatastructuremcqState();
}

class _DatastructuremcqState extends State<Datastructuremcq> {
  late int point;
  int? Q1s=5;
  int? Q2s=5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    point = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://c4.wallpaperflare.com/wallpaper/54/325/66/work-in-progress-wallpaper-preview.jpg"),
                  fit: BoxFit.cover)),
        ),
        Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text("Database MCQ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      height: 215,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. What is the full form of DBMS?",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 0,
                                groupValue: Q1s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q1s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Text('Data of Binary Management System'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: Q1s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q1s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Text('Database Management System'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: Q1s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q1s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Text('Database Management Service'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: Q1s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q1s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Text('Data Backup Management System'),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      height: 215,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2. What is a database?",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 0,
                                groupValue: Q2s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q2s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Expanded(child: Text(' Collection of data or information without organizing')),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: Q2s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q2s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Expanded(child: Text(' Organized collection of information that cannot be accessed, updated, and managed')),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: Q2s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q2s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Expanded(child: Text(' Organized collection of data or information that can be accessed, updated, and managed')),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: Q2s,
                                activeColor: Colors.black,
                                onChanged: (int? value) {
                                  setState(() {
                                    Q2s=value;
                                    print(value);
                                  });
                                },
                              ),
                              Expanded(child: Text(' Organized collection of data that cannot be updated')),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20),
            Container(
                width: 100,
                height: 35,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: MaterialButton(
                  onPressed: () async {

                    if(Q1s==1)
                    {point =point+1;}
                    if(Q2s==2)
                    {point=point+1;}

                    await   AwesomeDialog(
                      context: context,
                      dialogType: DialogType.SUCCES,
                      headerAnimationLoop: false,
                      animType: AnimType.TOPSLIDE,
                      title: 'Result',
                      desc: "you get $point points",
                      onDissmissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                      btnOkOnPress: () {},
                    ).show();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>HomePage ()));





                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white70),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
