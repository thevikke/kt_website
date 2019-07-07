import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller)
      : slideAnimation = Tween<Offset>(
                begin: Offset(0, double.infinity), end: Offset(0.0, 0.0))
            .animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              3,
              curve: Curves.ease,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<Offset> slideAnimation;
}
