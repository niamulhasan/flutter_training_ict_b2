import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBetterCounterApp());
}

class MyBetterCounterApp extends StatefulWidget {
  const MyBetterCounterApp({Key? key}) : super(key: key);

  @override
  _MyBetterCounterAppState createState() => _MyBetterCounterAppState();
}

class _MyBetterCounterAppState extends State<MyBetterCounterApp> {
  int _counter = 0;

  void _increment(bool jump) {
    setState(() {
      jump ? _counter = _counter + 10 : _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: _decrement,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => _increment(false),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Flutter Demo Flutter Better Home Page"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("You have pushed this button this many times:"),
              Text(
                "$_counter",
                style: TextStyle(
                  fontSize: 44.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// class MyBetterCounterApp extends StatelessWidget {
//   int counter = 0;
//   MyBetterCounterApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: Container(
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 30.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 FloatingActionButton(
//                   onPressed: () {
//                     counter--;
//                     print("Minus is pressed. $counter");
//                   },
//                   child: Icon(Icons.remove),
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {
//                     counter++;
//                     print("Plus is pressed. $counter");
//                   },
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           title: Text("Flutter Demo Flutter Better Home Page"),
//         ),
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("You have pushed this button this many times:"),
//               Text(
//                 "$counter",
//                 style: TextStyle(
//                   fontSize: 44.0,
//                   color: Colors.grey,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
