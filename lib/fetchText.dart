import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Fetch extends StatefulWidget {
  @override
  _FetchState createState() => _FetchState();
}

String text = '';
String path = '';
String topicName;

class _FetchState extends State<Fetch> {
  fetchFile() async {
    String resp = await rootBundle.loadString(path);
    setState(() {
      text = resp;
    });
  }

  @override
  void initState() {
    fetchFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Image(
                height: 20,
                width: 10,
                image: AssetImage(
                  'assets/backArrow.png',
                ),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.blue,
            title: Text(
              'Learn',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'solomon'),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.lightBlueAccent, Colors.blue],
                ),
              ),
            )),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black87, Colors.black],
            )),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$topicName\n',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cocogoose'),
                      ),
                      TextSpan(
                        text: text,
                        style: TextStyle(
                            fontFamily: 'productSans',
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
