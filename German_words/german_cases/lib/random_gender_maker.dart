import 'dart:math';
import 'data.dart';

String gender = "";
var listOfGenders;

class RandomGenderMaker {
  choseList() {
    int randomNumber = Random().nextInt(Data.genders.length);

    switch (randomNumber) {
      case 0:
        {
          listOfGenders = Data.menGender;
          gender = "man gender";
          print("man");
          return gender;
        }

      case 1:
        {
          listOfGenders = Data.womenGender;
          gender = "woman gender";
          print("woman");
          return gender;
        }

      case 2:
        {
          listOfGenders = Data.neuterGender;
          gender = "neuter gender";
          print("neuter gender");
          return gender;
        }

      case 3:
        {
          listOfGenders = Data.pluralNumber;
          gender = "plural number";
          print("plural number");
          return gender;
        }

      default:
        {
          listOfGenders = Data.menGender;
          gender = "man gender";
          print("man gender");
          return gender;
        }
    }
  }

  getListOfGender() {
    print("listOfGenders $listOfGenders");
    return listOfGenders;
  }
}
