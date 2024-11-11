import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("this is my appbar"),
        ),
        body: Center(
          child: Mybody(),
        ),
      ),
    );
  }
}

class Mybody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class  _MyBodyState extends State<Mybody>{

  int counter = 0;
  incConter(){
    setState(() {
      counter++;
    });
  }
  decCounter(){
    setState(() {
     
       if(counter>0) {
         counter--;
       } else {}
    });
  }
   
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed:incConter ,
          child: const Text("+"),
        ),
          ElevatedButton(
          onPressed: decCounter,
          child: const Text("-"),
        ),
        Text("$counter"),
      ],
    );
  }


}
