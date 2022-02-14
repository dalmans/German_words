import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Theory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const MyStatelessWidget(),
    );
    throw UnimplementedError();
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
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
                height: 32,
                width: 50,
                child: Center(
                  child: Text("Падеж"),
                )),
            Container(
                height: 32,
                width: 32,
                child: Center(
                  child: Text("Nominativ"),
                )),
            Container(
                height: 32,
                child: Center(
                  child: Text("Akkusativ"),
                )),
            Container(
                height: 32,
                child: Center(
                  child: Text("Dativ"),
                )),
            Container(
              height: 32,
              child: Center(child: Text("Genitiv")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
              height: 32,
            ),
            Container(
                height: 32,
                width: 32,
                child: Center(
                  child: Text("Именительн."),
                )),
            Container(
                height: 32,
                child: Center(
                  child: Text("Винительн."),
                )),
            Container(
                height: 32,
                child: Center(
                  child: Text("Дательн."),
                )),
            Container(
                height: 32,
                child: Center(
                  child: Text("Родительн."),
                )),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
               // height: 32,
                width: 45,
                child: Center(
                  child: Text("Вопрос"),
                )),
            Container(
               // height: 32,
                width: 32,
                child: Center(
                  child: Text('Wer? (Кто?) Was? (Что?)'),
                )),
            Container(
               // height: 32,
                child: Center(
                  child: Text("Wen? (Кого?) Was? (Что?)"),
                )),
            Container(
               // height: 32,
                child: Center(
                  child: Text("Wem? (Кому?) Wo? (Где?)"),
                )),
            Container(
            //  height: 32,
              child: Center(child: Text("Wessen? (Чей?)")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
              //  height: 32,
                width: 45,
                child: Center(
                  child: Text("Муж. род"),
                )),
            Container(
              //  height: 32,
                width: 32,
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
                width: 45,
                child: Center(
                  child: Text("Женск. род"),
                )),
            Container(
              //  height: 32,
                width: 32,
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
                width: 45,
                child: Center(
                  child: Text("Средн. род"),
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
                width: 45,
                child: Center(
                  child: Text("Мн. число"),
                )),
            Container(
              //  height: 32,
                width: 32,
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
                width: 45,
                child: Center(
                  child: Text("Предл."),
                )),
            Container(
              //  height: 32,
                width: 32,
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
                child: Center( child: Column(
                  children: [Text("mit, nach, aus, zu, von, bei, seit, außer, gegenüber")],
                ) )),
            Container(
             // height: 32,
              child: Center(child: Text("während, wegen, jenseits, diesseits, ungeachtet, außerhalb, infolge, (an)statt")),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
              //   height: 32,
                width: 45,
                child: Center(
                  child: Text("Предл. двойн. управл."),
                )),
            Container(
              //  height: 32,
                width: 32,
                child: Center(
                  child: Text(''),
                )),
            Container(
              // height: 32,
                child: Center(
                  child: Text("an, auf, hinter, neben, in, über, unter, vor, zwischen"),
                )),
            Container(
              // height: 32,
                child: Center(
                  child: Text("an, auf, hinter, neben, in, über, unter, vor, zwischen"),
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
