import 'package:german_cases/data.dart';
import 'package:german_cases/random_case_maker.dart';
import 'package:german_cases/random_gender_maker.dart';

import 'create_list_of_answers.dart';

String textGender = RandomGenderMaker().choseList();
String textCase = RandomCaseMaker().choseCaseOfQuestion();
int counter = CreateListOfAnswers().trueAnswers;
int numberOfAttempts = CreateListOfAnswers().trueAnswers;

String truePreposition =
    RandomGenderMaker().getListOfGender()[RandomCaseMaker().getIndexOfList()];

String variantOfArticle0 = CreateListOfAnswers().createListWithTrueAnswer()[0];
String variantOfArticle1 = CreateListOfAnswers().returnsAListOfArticles()[1];
String variantOfArticle2 = CreateListOfAnswers().returnsAListOfArticles()[2];
String variantOfArticle3 = CreateListOfAnswers().returnsAListOfArticles()[3];
String variantOfArticle4 = CreateListOfAnswers().returnsAListOfArticles()[4];
String variantOfArticle5 = CreateListOfAnswers().returnsAListOfArticles()[5];

void makeQuestion() {
  textGender = RandomGenderMaker().choseList();
  textCase = RandomCaseMaker().choseCaseOfQuestion();
  truePreposition =
      RandomGenderMaker().getListOfGender()[RandomCaseMaker().getIndexOfList()];
}

void refreshArticle() {
  variantOfArticle0 = CreateListOfAnswers().createListWithTrueAnswer()[0];
  variantOfArticle1 = CreateListOfAnswers().returnsAListOfArticles()[1];
  variantOfArticle2 = CreateListOfAnswers().returnsAListOfArticles()[2];
  variantOfArticle3 = CreateListOfAnswers().returnsAListOfArticles()[3];
  variantOfArticle4 = CreateListOfAnswers().returnsAListOfArticles()[4];
  variantOfArticle5 = CreateListOfAnswers().returnsAListOfArticles()[5];
}
