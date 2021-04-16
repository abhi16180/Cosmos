import 'package:flutter/material.dart';
import 'package:cosmos/quizsection.dart';

class Result extends StatelessWidget {
  const Result({Key key}) : super(key: key);

  void cleaR() {
    total = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AlertDialog(
          title: Center(
              child: Text(
            'Score',
            style: TextStyle(fontFamily: 'solomon'),
          )),
          content: Container(
            width: 100,
            height: 40,
            child: Center(
              child: Text(
                'Your score is $total/200',
                style: TextStyle(fontFamily: 'productSans'),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                cleaR();
                Navigator.pushNamed(context, 'home');
              },
              child: Center(
                child: Container(
                  constraints: BoxConstraints(minWidth: 250, maxHeight: 36),
                  alignment: Alignment.center,
                  child: Text(
                    'Home',
                    style: TextStyle(fontFamily: 'productSans'),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
