import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController field1 = TextEditingController();
  TextEditingController field2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
        ),
        home: Scaffold(
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
        margin: EdgeInsets.only(right: 40.0, left: 40.0),
    child: TextField(
    controller: field1,
      cursorColor: Colors.pink,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    labelText: 'Enter number',
    labelStyle: new TextStyle(color: Colors.pink),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    ),
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
    child: TextFormField(
      cursorColor: Colors.pink,
    controller: field2,
    keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter  a number',
        labelStyle: new TextStyle(color: Colors.pink),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.pink),
        ),
      ),
    ),
    ),
          ElevatedButton(
            onPressed: validate,
            child: Text('Calculate'),
            style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            ),
          ),
        ],
        ),
        ),
        ),
    );
  }

  validate() {
    int num1=0, num2=0;
    try {
      num1 = int.parse(field1.value.text);
      num2 = int.parse(field2.value.text);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Invalid Input');
    }
    int sum = num1 + num2;
    if (num1 != null && num2 != null) Fluttertoast.showToast(msg: 'Sum: $sum');
  }
}
