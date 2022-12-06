// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 33),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, {"country": "Canada", "currentTime": "05:30 am"});
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              child: Text(
                "Return to page1 with info about Canada",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, {"country": "EGYPT", "currentTime": "11:30 pm"});
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              child: Text(
                "Return to page1 with info about EGYPT",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}