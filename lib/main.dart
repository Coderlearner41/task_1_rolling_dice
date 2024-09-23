import 'package:flutter/material.dart';
import 'dart:math';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var random = Random();
  int randomInt=1;
  void rollDice(){
    setState(() {
       randomInt = random.nextInt(6); 
       switch(randomInt){
        case 0: imagePath = 'assets/dice-1.png';break;
        case 1: imagePath = 'assets/dice-2.png';break;
        case 2: imagePath = 'assets/dice-3.png';break;
        case 3: imagePath = 'assets/dice-4.png';break;
        case 4: imagePath = 'assets/dice-5.png';break;
        case 5: imagePath = 'assets/dice-6.png';break;
    }
    });
  }
  String imagePath = 'assets/dice-2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(imagePath, height:200, width: 200),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: rollDice,
                child: Text('Roll Dice'),
              ),
          ]
      ),
      ),
    );
  }
}
