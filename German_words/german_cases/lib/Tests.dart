import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_cases/data.dart';
import 'package:german_cases/variables.dart';

class Tests extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return  ListView(children: <Widget>[
      Center(
          child: Text(
            '$textGender, $textCase',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      Center(
    child: Text(
    '$truePreposition',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    )
      ),
      DataTable(
        columns: [
          DataColumn(label: Text("")),
          DataColumn(label: Text(
              '',
             // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [

            DataCell(Text(' var0 $variantOfArticle0'), onTap: (){},),
            DataCell(Text('var1 $variantOfArticle1'), onTap: (){},),

          ]),
          DataRow(cells: [
            DataCell(Text('var2 $variantOfArticle2')),
            DataCell(Text('var3 $variantOfArticle3')),

          ]),
          DataRow(  cells: [
          DataCell( Container(child: Text(' var4 $variantOfArticle4')),),
           DataCell(Text('var5 $variantOfArticle5') ),
          
          ]),
                ],
      ),
    ]);
      //  throw UnimplementedError();
  }

}