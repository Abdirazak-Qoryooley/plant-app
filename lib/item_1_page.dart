// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/data2.dart';
import 'package:plant_app/screen2.dart';

class item1 extends StatelessWidget {
  const item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            top: 12,
            left: 12,
          ),
          padding: const EdgeInsets.only(left: 10, top: 2),
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Text(
            '140 CM',
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.push(context,
                (MaterialPageRoute(builder: (context) => const screen2())));
          },
          color: Colors.black,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: const Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
                // color: Colors.grey,
                ),
            child: Image.asset(
              'assets/3r.png',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 19.0),
                child: const Text(
                  'Bird of Paradise',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19.0, top: 10),
                child: Text(
                  'Give them enough time and these pretty bird of pradise of plants grow of stunning orange of flowers as of they werent of impressive enough of already',
                  style: TextStyle(fontSize: 21, color: Colors.black38),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/ok.png',
                      height: 30,
                      color: Colors.greenAccent,
                    ),
                    Text(
                      'Easy Care',
                      style: GoogleFonts.akshar(
                          textStyle: const TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/sun.png',
                      height: 30,
                      color: Colors.greenAccent,
                    ),
                    Text('Sun-Lover',
                        style: GoogleFonts.akshar(
                            textStyle: const TextStyle(fontSize: 20))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/blood.png',
                      height: 30,
                      color: Colors.greenAccent,
                    ),
                    Text('Frequently',
                        style: GoogleFonts.akshar(
                            textStyle: const TextStyle(fontSize: 20))),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40, top: 30),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: const Text(
                  '\$14',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 65,
                    width: 180,
                    margin: const EdgeInsets.only(left: 30, top: 25),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
