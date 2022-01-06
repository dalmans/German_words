import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/data.dart';
import 'package:german_cases/random_case_maker.dart';
import 'package:german_cases/random_gender_maker.dart';
import 'package:german_cases/variables.dart';

class Tests extends StatefulWidget {
  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  String usersAnswer = "";

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
          child: Text(
        '$textGender, $textCase',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      // Center(
      //     child: Text(
      //   '$truePreposition',
      //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      // )),
      DataTable(
        columns: [
          DataColumn(label: Text("")),
          DataColumn(
              label: Text(
            '',
            // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(
              Text('$variantOfArticle0'),
              onTap: (){
                if(variantOfArticle0==truePreposition){
                  makeQuestion();
                  refreshArticle();
                  setState(() {
                    usersAnswer= "true";
                  });
                }
                else{
                  makeQuestion();
                  refreshArticle();
                  setState(() {
                    usersAnswer= "false";
                  }); }

              },
            ),
            DataCell(
              Text('$variantOfArticle1'),
              onTap: () {
                if (variantOfArticle1 == truePreposition) {
                  makeQuestion();
                  refreshArticle();
                  setState(() {
                    usersAnswer = "true";
                  });
                } else {
                  makeQuestion();
                  refreshArticle();
                  setState(() {
                    usersAnswer = "false";
                  });
                }
              },
            ),
          ]),
          DataRow(cells: [
            DataCell(Text('$variantOfArticle2'), onTap: () {
              if (variantOfArticle2 == truePreposition) {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "true";
                });
              } else {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "false";
                });
              }
            }),
            DataCell(Text('$variantOfArticle3'), onTap: () {
              if (variantOfArticle3 == truePreposition) {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "true";
                });
              } else {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "false";
                });
              }
            }),
          ]),
          DataRow(cells: [
            DataCell(Text('$variantOfArticle4'), onTap: () {
              if (variantOfArticle4 == truePreposition) {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "true";
                });
              } else {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "false";
                });
              }
            }),
            DataCell(Text('$variantOfArticle5'), onTap: () {
              if (variantOfArticle5 == truePreposition) {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "true";
                });
              } else {
                makeQuestion();
                refreshArticle();
                setState(() {
                  usersAnswer = "false";
                });
              }
            }),
          ]),
        ],
      ),
      Center(
          child: Text(
        'Your answer is: $usersAnswer',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    ]);
    //  throw UnimplementedError();
  }

  void showResult(BuildContext context) {}

  void reDrawQuestion() {
    RandomGenderMaker().choseList();
    RandomGenderMaker().getListOfGender();
    RandomCaseMaker().choseCaseOfQuestion();
    RandomCaseMaker().getIndexOfList();
    build(context);
  }
}
