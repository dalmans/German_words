import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/variables.dart';


class Tests extends StatefulWidget {
  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  String usersAnswer = "";
  static List colors = [
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      //Color(0xFF58FA68)
      Center(
          heightFactor: 4,
          child: Text(
            '$textGender,  $textCase',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            // height: 420,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                    //  speak(variantOfArticle0);
                      showResult(variantOfArticle0, 0);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[0]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        //   color: colors[0],
                        child: Text('$variantOfArticle0',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                     // speak(variantOfArticle1);
                      showResult(variantOfArticle1, 1);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[1]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                    //    color: colors[1],
                        child: Text('$variantOfArticle1',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                    //  speak(variantOfArticle2);
                      showResult(variantOfArticle2, 2);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[2]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                       // color: colors[2],
                        child: Text('$variantOfArticle2',
                            style: TextStyle(fontSize: 25)))),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                     // speak(variantOfArticle3);
                      showResult(variantOfArticle3, 3);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[3]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                      //  color: colors[3],
                        child: Text('$variantOfArticle3',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                     // speak(variantOfArticle4);
                      showResult(variantOfArticle4, 4);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[4]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                      //  color: colors[4],
                        child: Text('$variantOfArticle4',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                      //speak(variantOfArticle5);
                      showResult(variantOfArticle5, 5);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[5]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                       // color: colors[5],
                        child: Text('$variantOfArticle5',
                            style: TextStyle(fontSize: 25)))),
              ],
            ),
          )
        ],
      ),

      Center(
          heightFactor: 2,
          child: Text(
            'Your score is: $counter/$numberOfAttempts',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
    ]);
  }

  // speak(text) async {
  //   if (text != null) {
  //     Tts.setLanguage("de_Ger");
  //     Tts.speak(
  //       text,
  //     );
  //   }
  // }

  void showResult(variantOfArticle, i) async {
    if (variantOfArticle == truePreposition) {
      setState(() {
        colors[i] = Colors.green;
      });

      await Future.delayed(const Duration(seconds: 1));
      makeQuestion();
      refreshArticle();
      setState(() {
        counter++;
        numberOfAttempts++;
        usersAnswer = "true2";
        colors[i] = Colors.lightGreenAccent;
      });
    } else {
      setState(() {
        colors[i] = Colors.red;
      });

      await Future.delayed(const Duration(seconds: 1));
      makeQuestion();
      refreshArticle();

      setState(() {
        numberOfAttempts++;
        colors[i] = Colors.lightGreenAccent;
        usersAnswer = "false2";
      });
    }
  }

  void showResultB(variantOfArticle, int i) async {
    if (variantOfArticle == truePreposition) {
      setState(() {
        colors[i] = Colors.green;
      });
      makeQuestion();
      refreshArticle();
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        counter++;
        numberOfAttempts++;
        usersAnswer = "true2";
        colors[i] = Colors.lightGreenAccent;
      });
    } else {
      setState(() {
        colors[i] = Colors.red;
      });
      makeQuestion();
      refreshArticle();
      await Future.delayed(const Duration(microseconds: 30));
      setState(() {
        numberOfAttempts++;
        colors[i] = Colors.lightGreenAccent;
        usersAnswer = "false2";
      });
    }
  }
}
