import 'package:flutter/material.dart';

var index = 0;
var total = 0;

class QuizSection extends StatefulWidget {
  QuizSection({Key key}) : super(key: key);

  @override
  _QuizSectionState createState() => _QuizSectionState();
}

class _QuizSectionState extends State<QuizSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 100, bottom: 250),
          width: double.infinity,
          height: double.infinity,
          child: Card(
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Check point\n',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 250, 154),
                        fontSize: 50,
                        fontFamily: 'productSans',
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Have you read everything?\nIf so click the below button..\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'solomon',
                      color: Colors.cyan,
                    ),
                  ),
                  TextSpan(
                      text: 'If not,do not worry,please read and come back!!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                          fontFamily: 'solomon'))
                ]),
              ),
            ),
            elevation: 5,
            shadowColor: Color.fromARGB(255, 0, 129, 207),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'test');
          },
          child: Icon(Icons.navigate_next),
          backgroundColor: Colors.greenAccent,
          splashColor: Colors.tealAccent[700],
          elevation: 10,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
