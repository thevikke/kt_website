import 'package:flutter_web/material.dart';

/// Start sets coordinate where the line starts.
/// End sets the coordinate where the line ends.
/// Use x value for horizontal lines and y values for vertical lines.
/// Color is the color of the line.
class HorizontalLine extends StatelessWidget {
  HorizontalLine(
      {this.color = Colors.white,
      this.start = const Offset(-90.0, 0.0),
      this.end = const Offset(90.0, 0.0)});
  final Color color;
  final Offset start;
  final Offset end;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Drawhorizontalline(color, start, end),
    );
  }
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint;
  Color color;
  Offset start;
  Offset end;
  Drawhorizontalline(this.color, this.start, this.end) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(start, end, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
