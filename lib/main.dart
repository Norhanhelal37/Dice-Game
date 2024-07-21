import "dart:math";

import "package:flutter/material.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _myApp();
}

class _myApp extends State<MyApp> {
  Image start =const Image(image: AssetImage("images/dice-images/dice-1.png"));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 166, 213, 219),
              Colors.greenAccent
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: start,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                         const EdgeInsets.only(left: 40, right: 40)),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) =>const Color.fromARGB(255, 185, 153, 221)),
                    ),
                    onPressed: () {
                      int num = Random().nextInt(6)+1;
                      print(num);
                      setState(() {
                        start = Image(
                            image:
                                AssetImage("images/dice-images/dice-$num.png"));
                      });
                    },
                    child:const Text("Roll Dice",style: 
                       TextStyle(
                        fontSize: 30,
                        color: Colors.black
                       )
                    ,))
              ],
            )),
      ),
    );
  }
}
