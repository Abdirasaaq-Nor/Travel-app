import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/innerHomepages/ankara.dart';
import 'package:travelapp/innerHomepages/mogdisho.dart';
import 'package:travelapp/innerHomepages/nairobi.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: ListTile(
                leading: Text('🌝'),
                title: Text(
                  'Hi!, Abdi',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                ),
                subtitle: Text('Where would you like to go?'),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  child: Image.asset('./images/abdi1.png'),
                ),
              ),
            ),

            Container(
              color: Color.fromARGB(255, 229, 246, 248),
              height: 60,
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search),
                    label: Text('Search'),
                    suffixStyle: TextStyle(color: Colors.red)),
              ),
            ),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //  ................   item 1
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 241, 244),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            './images/travel1.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text('Travel',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        )
                      ]),
                    ),

                    // ......................item 2
                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      child: Column(children: [
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 241, 244),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            './images/hotel1.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text(
                            'Hotel',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                    ),
                    // .............Item 3
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 241, 244),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            './images/flight1.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text('Flight',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        )
                      ]),
                    ),
                    // ...........Item 4
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 241, 244),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            './images/car1.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text('Car',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        )
                      ]),
                    ),
                    // ...................item 5
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 241, 244),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            './images/restur1.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text('Resturant',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
            // ...................popular and see all
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w300,
                                fontSize: 19),
                          ),
                        ),
                        Container(
                            width: 20,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => mogdisho()));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            // ...............Item1
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                child: Image.asset(
                                  './images/mog1.jpg',
                                  width: 190,
                                  height: 280,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                           
                            Container(
                              margin: EdgeInsets.only(top: 180, left: 30),
                              child: Text(
                                'Mogdisho',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 8, 8, 8),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 210, left: 30),
                              child: Text(
                                'Somalia',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 14, 14, 14),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // ......................Item 2
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => nairobi()));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                child: Image.asset(
                                  './images/nai3.jpg',
                                  width: 180,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 180, left: 30),
                              child: Text(
                                'Nairobi',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 210, left: 30),
                              child: Text(
                                'Kenya',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ...............  item3
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>ankara()));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                child: Image.asset(
                                  './images/ankra2.jpg',
                                  width: 190,
                                  height: 280,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 180, left: 30),
                              child: Text(
                                'Ankara',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 210, left: 30),
                              child: Text(
                                'Turkey',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
