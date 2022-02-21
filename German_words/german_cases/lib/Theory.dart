

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:german_cases/SizeConfig.dart';
class Theory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
       // 0: IntrinsicColumnWidth(),
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
        4: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            // FittedBox(
              // fit: BoxFit.fitHeight,
             //child:
            Container(
                //  height: 32,
                child: Center(
              child: Text("Case", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            //  width: 50,

           //   ),
          //    FittedBox(
          //   fit: BoxFit.fitHeight,
           //   child:
            Container(
                // height: 32,
                // width: 32,
                child: Center(
              child: Text("Nominativ", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
          //  ),
            //      FittedBox(
            //  fit: BoxFit.fitHeight,
            // child:
            Container(
                //  height: 32,
                child: Center(
              child: Text("Akkusativ", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            //),
            //  FittedBox(
            //  fit: BoxFit.fitHeight,
            // child:
            Container(
                // height: 32,
                child: Center(
              child: Text("Dativ",style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            //),
            // FittedBox(
            // fit: BoxFit.fitHeight,
            // child:
            Container(
              //  height: 32,
              child: Center(child: Text("Genitiv", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
            // ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                // height: 32,
                // width: 45,
                child: Center(
              child: Text("Quest.", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                // width: 32,
                child: Center(
              child: Text('Wer? Was?', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text("Wen? Was?", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text("Wem? Wo?", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("Wessen?", style: TextStyle(fontSize: SizeConfig.tableTextSize ),), ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
                //   width: 45,
                child: Center(
              child: Text("Man", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                //  width: 32,
                child: Center(
              child: Text('der', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //   height: 32,
                child: Center(
              child: Text("den", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("dem", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("des", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                // height: 32,
                // width: 45,
                child: Center(
              child: Text("Women", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                //  width: 32,
                child: Center(
              child: Text('die', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("die", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("der", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
              // height: 32,
              child: Center(child: Text("der", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
                // width: 45,
                child: Center(
              child: Text("Neuter", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                width: 32,
                child: Center(
                  child: Text('das', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
                )),
            Container(
                // height: 32,
                child: Center(
              child: Text("das", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("dem", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
              //height: 32,
              child: Center(child: Text("des", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
                // width: 45,
                child: Center(
              child: Text("Pl. number", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                //  width: 32,
                child: Center(
              child: Text('die', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text("die", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("den", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("der", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //   height: 32,
                // width: 45,
                child: Center(
              child: Text("Prepos.", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                //  width: 32,
                child: Center(
              child: Text('', style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text("durch, für, ohne, gegen, wieder, entlang", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
                    child: Column(
              children: [
                Text("mit, nach, aus, zu, von, bei, seit, außer, gegenüber", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)
              ],
            ))),
            Container(
              // height: 32,
              child: Center(
                  child: Text(
                      "während, wegen, jenseits, diesseits, ungeachtet, außerhalb, infolge, (an)statt", style: TextStyle(fontSize: SizeConfig.tableTextSize ),)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //   height: 32,
                // width: 45,
                child: Center(
              child: Text("Double action prepos.", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                //  height: 32,
                //  width: 32,
                child: Center(
              child: Text(''),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text(
                  "an, auf, hinter, neben, in, über, unter, vor, zwischen", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text(
                  "an, auf, hinter, neben, in, über, unter, vor, zwischen", style: TextStyle(fontSize: SizeConfig.tableTextSize ),),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text(""),
            )),
          ],
        ),
      ],
    );
  }
}
