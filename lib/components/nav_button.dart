import 'package:flutter_web/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  final Color splashColor;
  const NavButton(
      {@required this.text,
      @required this.onPressed,
      this.color = Colors.blue,
      this.splashColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: OutlineButton(
        splashColor: splashColor,
        child: Text(text),
        borderSide: BorderSide(
          color: color,
        ),
        onPressed: onPressed,
        highlightedBorderColor: color,
      ),
    );
  }
}
