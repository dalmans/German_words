import 'package:german_cases/data.dart';

List<String> answersArticles = [];
List<String> answersQuestions = [];

int indexOfTrueAnswer = 0;

class CreateListOfAnswersArticles {
  int trueAnswers = 0;

  createListWithTrueAnswerArticles() {
    if (answersArticles.isEmpty) {
      answersArticles = Data.articles;
    }
    answersArticles.shuffle();
    print("index of true answer is:$indexOfTrueAnswer");
    print(answersArticles);
    return answersArticles;
  }

  createListWithTrueAnswerQuestions() {
    if (answersQuestions.isEmpty) {
      answersQuestions = Data.question;
    }
    answersQuestions.shuffle();
    print("index of true answer is:$indexOfTrueAnswer");
    print(answersQuestions);
    return answersQuestions;
  }

  returnsAListOfQuestions() {
    return answersQuestions;
  }

  returnsAListOfArticles() {
    return answersArticles;
  }

  void calculateTrueAnswers(variantOfArticle) async {}
}
