import 'package:flutter_web/material.dart';
import 'components.dart';
import 'package:kt_website/utils/utils.dart';

class NavHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PKDot(),
//    Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
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
            )
        ],
      ),
    );
  }
}
