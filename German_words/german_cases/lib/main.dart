
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/random_gender_maker.dart';

import 'SizeConfig.dart';
import 'Test2.dart';
import 'Tests.dart';
import 'Theory.dart';
import 'data.dart';


void main() {
 //RandomGenderMaker bac = new RandomGenderMaker();
 //bac.choseList();

  runApp(
    MaterialApp(home:  MyApp(),));
}
class MyApp extends StatelessWidget{
  Widget build (BuildContext context){
    SizeConfig().init(context);

    return MaterialApp(
      theme: ThemeData( scaffoldBackgroundColor: Color(0xFFCEF3CA)),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(

              title: TabBar(
              tabs: [
                Tab(child: Text("Theory", style: TextStyle(fontFamily: "BarlowBold", fontSize: 22, color: Color(
                    0xFF025E0B) ))),
                Tab(child: Text("Tests 1", style: TextStyle(fontFamily: "BarlowBold", fontSize: 22, color: Color(0xFF025E0B)))),
                Tab(child: Text("Tests 2", style: TextStyle(fontFamily: "BarlowBold", fontSize: 22, color: Color(0xFF025E0B))))

              ],
            ),

              backgroundColor: Colors.green
         ),
          body: TabBarView(
          //  children: [Theory(), Tests()],
            children: [Theory(), Tests(), Test2()],
          ),
        ),

      ),
    );
  }
}





