import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var num1,num2;
  var sum=0;
  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2 ;
    });
  }
  void doSubtract(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2 ;
    });
  }
  void doMultiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2 ;
    });
  }
  void doDivide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2 ;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Result : $sum",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number"),
              controller: t2,
            ),
            Padding(
                padding: const EdgeInsets.only(
              top: 20.0,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Icon(Icons.add),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doAddition();
                  },
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doSubtract();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("X"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doMultiply();
                  },
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doDivide();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
