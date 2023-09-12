import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screen2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
  ));
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 350),
              child: Column(
                children: [
                  Image.asset('images/4.png'),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'images/1.png',
                  width: 700,
                ),
                Text(
                  'Plants make you ',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'feel better',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'We Offeryou Variety of plants let\s ',
                  style: TextStyle(fontSize: 20, color: Colors.black26),
                ),
                Text(
                  'find the right plant for you',
                  style: TextStyle(fontSize: 20, color: Colors.black26),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff02FCAA5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => screen2()));
                      },
                      child: Icon(
                        CupertinoIcons.chevron_right,
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
