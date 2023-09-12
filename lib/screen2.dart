// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/data.dart';
import 'package:plant_app/item_1_page.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leadingWidth: 50,
        leading: Image.asset(
          'images/4.png',
          width: 700,
          height: 700,
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(12),
            child: Image.asset('images/abdi.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, top: 20),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    margin: EdgeInsets.only(left: 12),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'images/3.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff0EAF8F3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      '-30% on office ',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'plants',
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Shop Now',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff02FCAA5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'New Friends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: getdata.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: (() {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                  builder: (context) => item1(),
                                )));
                          }),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 9),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(getdata[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            getdata[index].name,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff02FCAA5),
          color: Colors.white,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            print(index);
          },
          items: [Icon(Icons.home), Icon(Icons.search), Icon(Icons.settings)]),
    );
  }
}
