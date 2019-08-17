import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import 'components.dart';

class AccomplishmentsList extends StatelessWidget {
  AccomplishmentsList(this.title);
  final String title;
  final List<String> _children = [
    "terve",
    "terve",
    "terve",
    "terve",
    "terve",
    "terve",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(0),
          ),
          width: size.width / 2.8,
          height: size.height / 2.2,
        ),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HorizontalLine(
                    start: Offset(-size.width / 10, 0),
                    end: Offset(size.width / 10, 0)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: size.width / 3.0,
              height: size.height / 3.5,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: _children.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: size.height / 35),
                    child: ListItem(_children[index]),
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
  const ListItem(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 10,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 4,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 8.0, right: 8.0, bottom: 0),
              child: Text(
                "Heinola Lukio",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I went to College in Heinola Lukio",
                  style: TextStyle(
                      color: Colors.black, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "2010 - 2013",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
