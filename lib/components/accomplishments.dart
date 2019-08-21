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
    List<Information> list;
    if (state.pageState == Page.EDUCATION) {
      list = data.educations;
    } else if (state.pageState == Page.WORK) {
      list = data.work;
    } else if (state.pageState == Page.PROJECTS) {
      list = data.projects;
    } else if (state.pageState == Page.CONTACT) {
      list = data.contacts;
    }
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
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Center(
                    child: Icon(Icons.arrow_left),
                  );
                },
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  Color color, textColor;
                  if (index == 0 && state.pageState == Page.EDUCATION) {
                    color = Colors.indigo[600];
                    textColor = Colors.white;
                  } else if (index == 0 && state.pageState == Page.WORK) {
                    color = Colors.blue[600];
                    textColor = Colors.white;
                  } else if (index == 0 && state.pageState == Page.PROJECTS) {
                    color = Colors.red;
                    textColor = Colors.white;
                  } else if (index == 0 && state.pageState == Page.CONTACT) {
                    color = Colors.blueAccent;
                    textColor = Colors.white;
                  } else {
                    color = Colors.white;
                    textColor = Colors.black;
                  }

                  return Padding(
                    padding: EdgeInsets.only(left: size.height / 35),
                    child: ListItem(
                      text: list[index].text,
                      title: list[index].title,
                      date: "${list[index].startTime} ${list[index].endTime}",
                      imageUrl: list[index].imageUrl,
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
  const ListItem(
      {this.text,
      this.title,
      this.color,
      this.textColor,
      this.date,
      this.imageUrl = ""});
  final String text;
  final String title;
  final String date;
  final String imageUrl;
  final Color textColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 4,
        color: color,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image(
                image: AssetImage(imageUrl ?? ""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 8.0, right: 8.0, bottom: 0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(fontStyle: FontStyle.normal, color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                date,
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
