import 'dart:ui';

import 'package:cosmos/topics.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import './quizsection.dart';
import './TestPage/test.dart';
import './fetchText.dart';
import './TestPage/result.dart';
import './about.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future _urlLaunch() async {
  await launch('https://github.com/abhi16180');
}

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'home': (context) => Home(),
          'quizSection': (context) => QuizSection(),
          'test': (context) => Test(),
          'fetch': (context) => Fetch(),
          'about': (context) => About(),
          'result': (context) => Result(),
        },
        home: AnimatedSplashScreen(
          splash: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(
              image: AssetImage('assets/splash.png'),
            ),
          ),
          duration: 2200,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: Duration(seconds: 1),
          nextScreen: Home(),
          backgroundColor: Colors.black87,
        ),
      ),
    );

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = <Tab>[
      const Tab(
        child: Text(
          'Learn',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'solomon'),
        ),
      ),
      Tab(
        child: Text(
          'Quiz',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'solomon'),
        ),
      ),
    ];
    final tabpage = <Widget>[
      Container(
        child: Topic(),
      ),
      QuizSection(),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  radius: 4,
                  backgroundImage: AssetImage('assets/universe.png'),
                ),
                decoration: BoxDecoration(color: Colors.black12),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'productSans',
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () => Navigator.pushNamed(context, 'home')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Quiz',
                    style: TextStyle(
                        fontFamily: 'productSans', fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'test'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                        fontFamily: 'productSans', fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: Text(
                        'About',
                        style: TextStyle(
                            fontFamily: 'solomon', fontWeight: FontWeight.bold),
                      ),
                      content: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'App by Abhilash Hegde\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'productSans',
                            ),
                          ),
                          TextSpan(
                              text: 'Link to Github',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontStyle: FontStyle.italic),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _urlLaunch)
                        ]),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () => showLicensePage(context: context),
                          child: Text(
                            'Licenses',
                            style: TextStyle(fontFamily: 'solomon'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            'Close',
                            style: TextStyle(fontFamily: 'solomon'),
                          ),
                        ),
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                ),
              )
            ],
          ),
          elevation: 10,
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            'COSMOS',
            style: TextStyle(
                color: Colors.black54, fontSize: 30, fontFamily: 'solomon'),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 0, 129, 207),
                  Color.fromARGB(255, 0, 210, 252),
                  Color.fromARGB(255, 0, 201, 167)
                ],
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color(21441),
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: tabpage,
        ),
      ),
    );
  }
}
