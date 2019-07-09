import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller, this.size)
      : slideAnimation = Tween(begin: 0.0, end: size.height).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.300,
              0.500,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeNameAnimation = Tween(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.100,
              0.500,
              curve: Curves.ease,
            ),
          ),
        ),
        backdropOpacity = Tween(begin: 0.5, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.500,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        backdropBlur = Tween(begin: 0.0, end: 5.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              0.800,
              curve: Curves.ease,
            ),
          ),
        );

  final AnimationController controller;
  final Animation slideAnimation;
  final Animation fadeNameAnimation;
  final Animation<double> backdropOpacity;
  final Animation<double> backdropBlur;
  final Size size;
}
