import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:kt_website/models/models.dart';

import 'components.dart';

class AccomplishmentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final state = AppStateContainer.of(context).state;
    final data = Data();

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(0),
          ),
          height: size.height / 2.2,
          width: size.width / 3.0,
        ),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  state.pageTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HorizontalLine(
                  start: Offset(-size.width / 10, 0),
                  end: Offset(size.width / 10, 0),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: size.width / 3.2,
              height: size.height / 3.5,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: ,
                itemBuilder: (context, index) {
                  Color color, textColor;
                  if (index == 0) {
                    color = Colors.indigo[600];
                    textColor = Colors.white;
                  } else {
                    color = Colors.white;
                    textColor = Colors.black;
                  }
                  return Padding(
                    padding: EdgeInsets.only(left: size.height / 35),
                    child: ListItem(
                      text: ,
                      title: ,
                      color: color,
                      textColor: textColor,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({this.text, this.title, this.color, this.textColor});
  final String text;
  final String title;
  final Color textColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 7,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 4,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, left: 8.0, right: 8.0, bottom: 0),
              child: Text(
                "Heinola Lukio",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I went to College in Heinola Lukio",
                  style:
                      TextStyle(fontStyle: FontStyle.normal, color: textColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "2010 - 2013",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
