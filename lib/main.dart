import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Ask me anything'),
        backgroundColor: Colors.black,
      ),
      body: BallPage(),
      backgroundColor: Colors.cyan,
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballNumber.png')));
  }
}

// class BallPage extends StatelessWidget {
//   const BallPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//         title: const Text('Ask me anything'),
//         backgroundColor: Colors.blue,
//       )),
//     );
//   }
// }
