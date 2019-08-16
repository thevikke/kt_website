import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

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
    "terve",
    "terve"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 1.5,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _children.length,
            itemBuilder: (context, index) {
              return ListItem(_children[index]);
            },
          ),
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
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
