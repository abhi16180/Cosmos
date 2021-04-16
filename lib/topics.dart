import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import './fetchText.dart';

class Topic extends StatefulWidget {
  Topic({Key key}) : super(key: key);

  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  @override
  Widget build(BuildContext context) {
    final imglst = <String>[
      'assets/origin.jpg',
      'assets/life.jpg',
      'assets/light.jpg',
      'assets/blackhole.jpg',
      'assets/particlePhysics.jpg'
    ];

    final List topics = [
      'The origin',
      'Life',
      'Light',
      'Black holes',
      'Particle Physics'
    ];

    return Container(
      child: Hero(
        tag: 'topic',
        child: StaggeredGridView.countBuilder(
            padding: const EdgeInsets.all(12.0),
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            itemCount: imglst.length,
            itemBuilder: (BuildContext context, int index) => Material(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        switch (index) {
                          case 0:
                            path = "textAsset/origin.txt";
                            topicName = topics[index];

                            break;
                          case 1:
                            path = "textAsset/life.txt";
                            topicName = topics[index];
                            break;
                          case 2:
                            path = "textAsset/light.txt";
                            topicName = topics[index];
                            break;
                          case 3:
                            path = "textAsset/blackholes.txt";
                            topicName = topics[index];
                            break;
                          case 4:
                            path = "textAsset/particle.txt";
                            topicName = topics[index];
                            break;
                        }
                      });
                      Navigator.pushNamed(context, 'fetch');
                    },
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shadowColor: Colors.white.withOpacity(0.4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      child: Stack(
                        children: [
                          Image(
                            width: double.infinity,
                            height: double.infinity,
                            image: AssetImage(
                              imglst[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Text(
                              topics[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'solomon',
                                fontSize: 15,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(blurRadius: 3.0, color: Colors.black)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.1 : 1.8);
            }),
      ),
    );
  }
}
