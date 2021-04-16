import 'package:cosmos/TestPage/questionList.dart';
import 'package:flutter/material.dart';
import 'package:cosmos/CustomAppBar.dart';
import 'package:cosmos/quizsection.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final List question = [
    QuestionList.name(
        question: 'Who came up with the idea of expanding universe?',
        ans: ['Einstein', 'Newton', 'Hubble', 'None of the above'],
        correctAns: 'Hubble'),
    QuestionList.name(
      question: 'Protons and neutrons are called __',
      ans: ['Leptons', 'Baryons', 'Bosons', 'quarks'],
      correctAns: 'Baryons',
    ),
    QuestionList.name(
        question: 'Dark energy accounts for __% of mass-energy of the universe',
        ans: ['70', '10', '20', '90'],
        correctAns: '70'),
    QuestionList.name(
        question: 'What % of matter in the universe is dark matter?',
        ans: ['26', '30', '40', '50'],
        correctAns: '26'),
    QuestionList.name(
        question: 'What is binomial nomenclature of human species?',
        ans: ['Humans', 'Homo Sapiens', '	Vulpes vulpes', 'Pavo cristatus'],
        correctAns: 'Homo Sapiens'),
    QuestionList.name(
        question: 'Appearance of organism is determined by ___',
        ans: ['Cell', 'DNA', 'Carbon content', 'Molecules'],
        correctAns: 'DNA'),
    QuestionList.name(
        question: 'Particle of light is called __',
        ans: ['Proton', 'Electra', 'Photon', 'Pulse'],
        correctAns: 'Photon'),
    QuestionList.name(
        question: 'Who proposed General theory of relativity',
        ans: [
          'Isaac Newton',
          'Stephen Hawking',
          'Albert Einstein',
          'Karl Schwarzschild'
        ],
        correctAns: 'Albert Einstein'),
    QuestionList.name(
        question: 'Wave nature of light is confirmed by __',
        ans: [
          'Polarization',
          'Diffraction',
          'Photoelectric effect',
          'None of the above'
        ],
        correctAns: 'Diffraction'),
    QuestionList.name(
        question: 'Light with highest frequency corresponds to ',
        ans: [
          'Radio wave',
          'Micro wave',
          'Gamma radiation',
          'Ultraviolet radiation'
        ],
        correctAns: 'Gamma radiation'),
    QuestionList.name(
        question: 'Fermions follow __',
        ans: [
          'Bose-Einstein statistics',
          'Fermi-Dirac statistics',
          'Both',
          'None of the above'
        ],
        correctAns: 'Fermi-Dirac statistics'),
    QuestionList.name(
        question: 'Bosons follow __',
        ans: [
          'Bose-Einstein statistics',
          'Fermi-Dirac statistics',
          'Both',
          'None of the above'
        ],
        correctAns: 'Bose-Einstein statistics'),
    QuestionList.name(
        question: 'Tauons are _',
        ans: ['Electrons', 'Leptons', 'Baryons', 'Quarks'],
        correctAns: 'Leptons'),
    QuestionList.name(
        question: 'Proton is made up of',
        ans: ['Quarks', 'Leptons', 'Muons', 'Bosons'],
        correctAns: 'Quarks'),
    QuestionList.name(
        question: 'Charge of Up quark is ',
        ans: ['-2e/3', '+1e/3', '-e', '+2e/3'],
        correctAns: '+2e/3'),
    QuestionList.name(
        question: 'Muons are',
        ans: ['Quarks', 'Leptons', 'Baryons', 'Bosons'],
        correctAns: 'Leptons'),
    QuestionList.name(
        question: 'Schwarzschild radius is',
        ans: [
          'Radius of the universe',
          'Radius of atom',
          'Radius of event horizon',
          'None of the above'
        ],
        correctAns: 'Radius of event horizon'),
    QuestionList.name(
        question:
            'Generally stars with minimum solar mass __ can become Blackhole',
        ans: ['10', '3', '1', '30'],
        correctAns: '3'),
    QuestionList.name(
        question: 'Reason for formation of Black hole is',
        ans: [
          'Extreme gravitational pull',
          'Radiation pressure',
          'Both',
          'None of the above'
        ],
        correctAns: 'Extreme gravitational pull'),
    QuestionList.name(
      question: 'Center of black hole is called __',
      ans: ['Singularity', 'Event horizon', 'Both', 'None of the above'],
      correctAns: 'Singularity',
    ),
  ];
  final List ansList = <String>['ans1', 'ans2', 'ans3', 'ans4'];

  void reset() {
    setState(() {
      index = 0;
    });
  }

  void increment() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Image(
              width: 20,
              height: 15,
              image: AssetImage('assets/backArrow.png'),
            ),
            onPressed: () => Navigator.of(context).pop()),
        title: Text(
          'Quiz',
          style: TextStyle(fontFamily: 'solomon'),
        ),
        flexibleSpace: CustomDesign(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50),
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 20,
              shadowColor: Colors.black,
              child: Container(
                width: 400,
                height: 150,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    question[index].question,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'productSans',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ListView.builder(
                padding: EdgeInsets.only(top: 10),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Center(
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 15,
                      child: InkWell(
                        onTap: () {
                          if (question[index].ans[i] ==
                              question[index].correctAns) {
                            total += 10;
                          }
                          if (index < question.length - 1) {
                            setState(() {
                              index += 1;
                            });
                          } else {
                            reset();
                            Navigator.pushNamed(context, 'result');
                          }
                        },
                        child: Container(
                          width: 400,
                          height: 60,
                          child: Center(
                            child: Text(
                              question[index].ans[i],
                              style: TextStyle(
                                fontFamily: 'productSans',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
