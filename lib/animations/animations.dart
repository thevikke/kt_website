import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller)
      : slideAnimation = Tween(begin: 0.0, end: 1000).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.700,
              1.000,
              curve: Curves.easeInToLinear,
            ),
          ),
        );

  final AnimationController controller;
  final Animation slideAnimation;
}
