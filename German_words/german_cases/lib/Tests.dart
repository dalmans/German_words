import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/data.dart';
import 'package:german_cases/random_case_maker.dart';
import 'package:german_cases/random_gender_maker.dart';
import 'package:german_cases/variables.dart';

import 'create_list_of_answers.dart';



class Tests extends StatefulWidget {
  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  String usersAnswer = "";
  String serialNumber = "";
  var color = Colors.lime;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
          child: Text(
        '$textGender, $textCase',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      Center(
          child: Text(
        'Your score is: $counter/$numberOfAttempts',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      showResult(variantOfArticle0);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: color,
                        child: Text(
                          '$variantOfArticle0',
                          style: TextStyle(fontSize: 25),
                        ))),
                GestureDetector(
                    onTap: () {
                      showResult(variantOfArticle1);
                    },
                    child: Container(

                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: color,
                        child: Text('$variantOfArticle1',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                      showResult(variantOfArticle2);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: color,
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
                      showResult(variantOfArticle3);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: Colors.lime,
                        child: Text('$variantOfArticle3',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                      showResult(variantOfArticle4);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: Colors.lime,
                        child: Text('$variantOfArticle4',
                            style: TextStyle(fontSize: 25)))),
                GestureDetector(
                    onTap: () {
                      showResult(variantOfArticle5);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: Colors.lime,
                        child: Text('$variantOfArticle5',
                            style: TextStyle(fontSize: 25)))),
              ],
            ),
          )
        ],
      ),
      //
      // Center(
      //     child: Text(
      //   'Your answer is: $usersAnswer',
      //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      // )),
    ]);
  }

  void showResult(variantOfArticle) async {
    if (variantOfArticle == truePreposition) {
      setState(() {
        color = Colors.green;
      });
      makeQuestion();
      refreshArticle();
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        counter++;
        numberOfAttempts++;
        usersAnswer = "true2";
        color = Colors.lime;
      });
    } else {
      setState(() {
        color = Colors.red;
      });
      makeQuestion();
      refreshArticle();
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        numberOfAttempts++;
        color = Colors.lime;
        usersAnswer = "false2";
      });
    }
  }

  void calculateTrueAnswers(variantOfArticle) {}

  void reDrawQuestion() {
    RandomGenderMaker().choseList();
    RandomGenderMaker().getListOfGender();
    RandomCaseMaker().choseCaseOfQuestion();
    RandomCaseMaker().getIndexOfList();
    build(context);
  }
}
