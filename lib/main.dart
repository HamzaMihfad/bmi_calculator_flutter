import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        accentColor: Colors.purple,
        // scaffoldBackgroundColor: Colors.red,
        // textTheme: TextTheme(
        //   body1: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
        // data: ThemeData.light(),
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
