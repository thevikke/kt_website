import 'package:flutter_web/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {@required this.text,
      @required this.onPressed,
      this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: OutlineButton(
        splashColor: color,
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
