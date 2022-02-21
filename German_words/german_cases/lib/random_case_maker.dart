import 'dart:math';

import 'data.dart';

int indexOfList = 0;

class RandomCaseMaker {
  String caseOfQuestion = "";

  choseCaseOfQuestion() {
    int randomNumber = Random().nextInt(Data.cases.length);
    switch (randomNumber) {
      case 0:
        {
          caseOfQuestion = Data.cases[0];
          indexOfList = 0;
          return caseOfQuestion;
        }
      case 1:
        {
          caseOfQuestion = Data.cases[1];
          indexOfList = 1;
          return caseOfQuestion;
        }
      case 2:
        {
          caseOfQuestion = Data.cases[2];
          indexOfList = 2;
          return caseOfQuestion;
        }
      case 3:
        {
          caseOfQuestion = Data.cases[3];
          indexOfList = 3;
          return caseOfQuestion;
        }
    }
  }

  getIndexOfList() {
    print("indexOfList $indexOfList");
    return indexOfList;
  }
}
