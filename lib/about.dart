import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './CustomAppBar.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  void _launchURL() async => await canLaunch('https://github.com/abhi16180')
      ? await launch('https://github.com/abhi16180')
      : throw 'Could not launch ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(fontFamily: 'solomon'),
        ),
        flexibleSpace: CustomDesign(),
      ),
      body: Container(
        child: Center(
            child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'App by Abhilash Hegde',
              recognizer: TapGestureRecognizer()..onTap = _launchURL,
              style: TextStyle(color: Colors.black),
            ),
          ]),
        )),
      ),
    );
  }
}
