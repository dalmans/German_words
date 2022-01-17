import 'dart:math';

import 'package:german_cases/data.dart';
import 'package:german_cases/variables.dart';

List<String> answers = [];
int indexOfTrueAnswer = 0;

class CreateListOfAnswers {
  int trueAnswers =0;
  createListWithTrueAnswer() {
    if (answers.isEmpty) {
      answers = Data.articles;
    }
    answers.shuffle();
   // indexOfTrueAnswer = Random().nextInt(5);
    print("index of true answer is:$indexOfTrueAnswer");
    print(answers);
    return answers;
  }

  returnsAListOfArticles() {
    return answers;
  }

  void calculateTrueAnswers (variantOfArticle) async {

  }
}
