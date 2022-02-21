import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/variables.dart';
import 'dart:async';

import 'SizeConfig.dart';

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  String usersAnswer = "";

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
           Center(
          heightFactor: 3,
          child: Text(
            '$textCase',
            style: TextStyle(fontSize: SizeConfig.testTextSize, fontWeight: FontWeight.bold),
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
                      showResultOfQuestions(variantOfQuestion0, 0);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[0]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        //   color: colors[0],
                        child: Text('$variantOfQuestion0',
                            style: TextStyle(fontSize: SizeConfig.testTextSize)))),
                GestureDetector(
                    onTap: () {
                      // speak(variantOfArticle1);
                      showResultOfQuestions(variantOfQuestion1, 1);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[1]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        //    color: colors[1],
                        child: Text('$variantOfQuestion1',
                            style: TextStyle(fontSize: SizeConfig.testTextSize)))),
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
                      showResultOfQuestions(variantOfQuestion2, 2);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[2]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        //  color: colors[2],
                        child: Text('$variantOfQuestion2',
                            style: TextStyle(fontSize: SizeConfig.testTextSize)))),
                GestureDetector(
                    onTap: () {
                      // speak(variantOfArticle4);
                      showResultOfQuestions(variantOfQuestion3, 3);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[3]),
                        height: 110,
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        //  color: colors[4],
                        child: Text('$variantOfQuestion3',
                            style: TextStyle(fontSize: SizeConfig.testTextSize)))),
              ],
            ),
          )
        ],
      ),

      Center(
          heightFactor: 2,
          child: Text(
            'Your score is: $counterTest2/$numberOfAttemptsTest2',
            style: TextStyle(fontSize: SizeConfig.testTextSize, fontWeight: FontWeight.bold),
          )),
    ]);
  }

  void showResultOfQuestions( variantOfQuestion,  i) async {
    if (variantOfQuestion == trueQuestion) {
      setState(() {
        colors[i] = Colors.green;
        print("trueQuestion $trueQuestion");
      });

      await Future.delayed(const Duration(seconds: 1));
      makeQuestionForQuestion();
      refreshQuestion();
      setState(() {
        counterTest2++;
        numberOfAttemptsTest2++;
        usersAnswer = "true2";
        colors[i] = Colors.lightGreenAccent;
      });
    } else {
    setState(() {
      colors[i] = Colors.red;
      print("trueQuestion $trueQuestion");
    }
    );

      await Future.delayed(const Duration(seconds: 1));
      makeQuestionForQuestion();
      refreshQuestion();

      setState(() {
        numberOfAttemptsTest2++;
        colors[i] = Colors.lightGreenAccent;
        //usersAnswer = "false2";
      });
    }
  }
}
