import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/homePages/HomePage.dart';

class mogdisho extends StatefulWidget {
  mogdisho({Key? key}) : super(key: key);

  @override
  State<mogdisho> createState() => _mogdishoState();
}

class _mogdishoState extends State<mogdisho> {
  DateTime date = DateTime.now();

  int count = 0;
  int starting_price = 0;

  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 245, 245),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Row(
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => homePage()));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  child: Text(
                    'Mogdisho',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    '(Somalia)',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),

          // ....................outside the Row

          Container(
            margin: EdgeInsets.only(top: 20),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child:  ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  './images/img_4.jpg',
                  width: 270,
                  height: 280,
                ),
              ),
                  ),
                  // ...........Second image
                    Container(
                    child:  ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  './images/img_2.jpg',
                  width: 270,
                  height: 270,
                ),
              ),
                  ),
            
                  
                ],
              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                // ..............................first item

                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 50, bottom: 8),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Depart',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              color: Color.fromARGB(255, 90, 89, 89),
                              letterSpacing: 2),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 236, 230, 230),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: IconButton(
                                  onPressed: () async {
                                    DateTime? NewDate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2023));
                                    if (NewDate == null) return;
                                    setState(() {
                                      date = NewDate;
                                    });
                                  },
                                  icon: Icon(Icons.date_range_outlined),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 50,
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.center,
                                child: Text(
                                  '${date.day}/${date.month}/${date.year}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                // ...................second item
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 50, bottom: 8),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Return',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              color: Color.fromARGB(255, 90, 89, 89),
                              letterSpacing: 2),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 236, 230, 230),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: () async {
                                    DateTime? NewDate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2023));
                                    if (NewDate == null) return;
                                    setState(() {
                                      date = NewDate;
                                    });
                                  },
                                  icon: Icon(Icons.date_range_outlined),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 50,
                                margin: EdgeInsets.only(top: 10),
                                alignment: Alignment.center,
                                // decoration: BoxDecoration(
                                //     color: Color.fromARGB(255, 213, 210, 210),
                                //     borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  '${date.day}/${date.month}/${date.year}',
                                  style: TextStyle(
                                      color: Colors.black, letterSpacing: 2),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                // ..................first item column

                Container(
                  margin: EdgeInsets.only(top: 20, left: 4),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          'Person',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              letterSpacing: 2),
                        ),
                      ),
                      Container(
                        width: 129,
                        margin: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 230, 230),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    count--;
                                    starting_price -= 150;
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                            ),
                            Container(child: Text('${count}')),
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    count++;
                                    starting_price += 150;
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // ...................end column 1

                //  ................second item column

                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          'Flight',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              letterSpacing: 2),
                        ),
                      ),
                      Container(
                        width: 129,
                        margin: EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 230, 230),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.airplane_ticket_outlined),
                              ),
                            ),
                            Container(child: Text('Flight')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // .................End second ite, column
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 40, left: 30),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      ' Total: \$ ${starting_price}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    width: 180,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.cyan),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
