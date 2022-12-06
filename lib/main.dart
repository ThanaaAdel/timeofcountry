import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Page1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const Page2(),
      },

    );
  }
}

// class TimeOfCountry extends StatefulWidget {
//   const TimeOfCountry({Key? key}) : super(key: key);
//
//   @override
//   State<TimeOfCountry> createState() => _TimeOfCountryState();
// }
//
// // class _TimeOfCountryState extends State<TimeOfCountry> {
// //   Map receivedData = {"timezone": "egypt"};
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           "TimeOfCountry App",
// //           style: TextStyle(fontSize: 22, color: Colors.white),
// //         ),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             Text(
// //               receivedData["timezone"],
// //               style: TextStyle(fontSize: 55),
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () async {
// //           Response responseee = await get(Uri.parse(
// //               'http://worldtimeapi.org/api/timezone/America/Toronto'));
// //
// //           setState(() {
// //             receivedData = jsonDecode(responseee.body);
// //           });
// //
// //           print(receivedData);
// //         },
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }