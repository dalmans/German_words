import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
        4: FlexColumnWidth(),
        //4: IntrinsicColumnWidth(),

      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                    //  height: 32,
                    child: Center(
                  child: Text("Case"),
                ))
                //  width: 50,

                ),
            FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                    // height: 32,
                    // width: 32,
                    child: Center(
                  child: Text("Nominativ"),
                ))),
            FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                  //  height: 32,
                    child: Center(
                      child: Text("Akkusativ"),
                    ))),
            FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                   // height: 32,
                    child: Center(
                      child: Text("Dativ"),
                    ))),
            FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                //  height: 32,
                  child: Center(child: Text("Genitiv")),
                )),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                // height: 32,
                // width: 45,
                child: Center(
              child: Text("Quest."),
            )),
            Container(
                // height: 32,
               // width: 32,
                child: Center(
                  child: Text('Wer? Was?'),
                )),
            Container(
                // height: 32,
                child: Center(
              child: Text("Wen? Was?"),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text("Wem? Wo?"),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("Wessen?")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
             //   width: 45,
                child: Center(
                  child: Text("Man"),
                )),
            Container(
                //  height: 32,
              //  width: 32,
                child: Center(
                  child: Text('der'),
                )),
            Container(
                //   height: 32,
                child: Center(
              child: Text("den"),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("dem"),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("des")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                // height: 32,
                // width: 45,
                child: Center(
              child: Text("Women"),
            )),
            Container(
                //  height: 32,
              //  width: 32,
                child: Center(
                  child: Text('die'),
                )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("die"),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("der"),
            )),
            Container(
              // height: 32,
              child: Center(child: Text("der")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
               // width: 45,
                child: Center(
                  child: Text("Neuter"),
                )),
            Container(
                //  height: 32,
                width: 32,
                child: Center(
                  child: Text('das'),
                )),
            Container(
                // height: 32,
                child: Center(
              child: Text("das"),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("dem"),
            )),
            Container(
              //height: 32,
              child: Center(child: Text("des")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //  height: 32,
                // width: 45,
                child: Center(
              child: Text("Pl. number"),
            )),
            Container(
                //  height: 32,
              //  width: 32,
                child: Center(
                  child: Text('die'),
                )),
            Container(
                // height: 32,
                child: Center(
              child: Text("die"),
            )),
            Container(
                //  height: 32,
                child: Center(
              child: Text("den"),
            )),
            Container(
              //  height: 32,
              child: Center(child: Text("der")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //   height: 32,
                // width: 45,
                child: Center(
              child: Text("Prepos."),
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
              child: Text("durch, für, ohne, gegen, wieder, entlang"),
            )),
            Container(
                // height: 32,
                child: Center(
                    child: Column(
              children: [
                Text("mit, nach, aus, zu, von, bei, seit, außer, gegenüber")
              ],
            ))),
            Container(
              // height: 32,
              child: Center(
                  child: Text(
                      "während, wegen, jenseits, diesseits, ungeachtet, außerhalb, infolge, (an)statt")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                //   height: 32,
               // width: 45,
                child: Center(
                  child: Text("Double action prepos."),
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
                  "an, auf, hinter, neben, in, über, unter, vor, zwischen"),
            )),
            Container(
                // height: 32,
                child: Center(
              child: Text(
                  "an, auf, hinter, neben, in, über, unter, vor, zwischen"),
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
