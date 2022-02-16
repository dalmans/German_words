import 'package:flutter/material.dart';
import 'package:german_cases/data.dart';
import 'package:german_cases/random_case_maker.dart';
import 'package:german_cases/random_gender_maker.dart';
import 'create_list_of_answers.dart';

String textGender = RandomGenderMaker().choseList();
String textCase = RandomCaseMaker().choseCaseOfQuestion();

int counter = CreateListOfAnswersArticles().trueAnswers;
int numberOfAttempts = CreateListOfAnswersArticles().trueAnswers;
int counterTest2 = CreateListOfAnswersArticles().trueAnswers;
int numberOfAttemptsTest2 = CreateListOfAnswersArticles().trueAnswers;


String truePreposition =
    RandomGenderMaker().getListOfGender()[RandomCaseMaker().getIndexOfList()];
String trueQuestion = Data.question[RandomCaseMaker().getIndexOfList()];

String variantOfArticle0 = CreateListOfAnswersArticles().createListWithTrueAnswerArticles()[0];
String variantOfArticle1 = CreateListOfAnswersArticles().returnsAListOfArticles()[1];
String variantOfArticle2 = CreateListOfAnswersArticles().returnsAListOfArticles()[2];
String variantOfArticle3 = CreateListOfAnswersArticles().returnsAListOfArticles()[3];
String variantOfArticle4 = CreateListOfAnswersArticles().returnsAListOfArticles()[4];
String variantOfArticle5 = CreateListOfAnswersArticles().returnsAListOfArticles()[5];

String variantOfQuestion0 = CreateListOfAnswersArticles().createListWithTrueAnswerQuestions()[0];
String variantOfQuestion1 = CreateListOfAnswersArticles().returnsAListOfQuestions()[1];
String variantOfQuestion2 = CreateListOfAnswersArticles().returnsAListOfQuestions()[2];
String variantOfQuestion3 = CreateListOfAnswersArticles().returnsAListOfQuestions()[3];

void makeQuestionForArticle() {
  textGender = RandomGenderMaker().choseList();
  textCase = RandomCaseMaker().choseCaseOfQuestion();
  truePreposition =
      RandomGenderMaker().getListOfGender()[RandomCaseMaker().getIndexOfList()];
}

void makeQuestionForQuestion() {
  textCase = RandomCaseMaker().choseCaseOfQuestion();
  trueQuestion =Data.question[RandomCaseMaker().getIndexOfList()];
}

void refreshArticle() {
  variantOfArticle0 = CreateListOfAnswersArticles().createListWithTrueAnswerArticles()[0];
  variantOfArticle1 = CreateListOfAnswersArticles().returnsAListOfArticles()[1];
  variantOfArticle2 = CreateListOfAnswersArticles().returnsAListOfArticles()[2];
  variantOfArticle3 = CreateListOfAnswersArticles().returnsAListOfArticles()[3];
  variantOfArticle4 = CreateListOfAnswersArticles().returnsAListOfArticles()[4];
  variantOfArticle5 = CreateListOfAnswersArticles().returnsAListOfArticles()[5];
}
void refreshQuestion() {
  variantOfQuestion0 = CreateListOfAnswersArticles().createListWithTrueAnswerQuestions()[0];
  variantOfQuestion1 = CreateListOfAnswersArticles().returnsAListOfQuestions()[1];
  variantOfQuestion2 = CreateListOfAnswersArticles().returnsAListOfQuestions()[2];
  variantOfQuestion3 = CreateListOfAnswersArticles().returnsAListOfQuestions()[3];

}

 List colors = [
  Colors.lightGreenAccent,
  Colors.lightGreenAccent,
  Colors.lightGreenAccent,
  Colors.lightGreenAccent,
  Colors.lightGreenAccent,
  Colors.lightGreenAccent
];