import 'package:flutter/material.dart';
import 'package:german_cases/random_gender_maker.dart';

import 'Tests.dart';
import 'Theory.dart';
import 'data.dart';


void main() {
 //RandomGenderMaker bac = new RandomGenderMaker();
 //bac.choseList();

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build (BuildContext inContext){
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Theory"),
                Tab(text: "Tests 1"),
                Tab(text: "Tests 2",)

              ],
            ),
         ),
          body: TabBarView(
          //  children: [Theory(), Tests()],
            children: [Theory(), Tests(), Tests()],
          ),
        ),

      ),
    );
  }
}


