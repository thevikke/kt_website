import 'package:flutter_web/material.dart';
import '../utils/utils.dart';
import 'components.dart';

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                child: Text("hello"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("hello"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("hello"),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Kristian Tuusjärvi ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlatButton(
            child: Text("hello"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("hello"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("hello"),
            onPressed: () {},
          ),
          Text(
            "Kristian Tuusjärvi ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
