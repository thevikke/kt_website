import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller, this.size)
      : slideAnimation = Tween(begin: 0.0, end: size.height).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.200,
              0.400,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeNameAnimation = Tween(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              0.350,
              curve: Curves.ease,
            ),
          ),
        ),
        backgroundOpacity = Tween(begin: 1.0, end: 0.5).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.400,
              0.800,
              curve: Curves.decelerate,
            ),
          ),
        );

  final AnimationController controller;
  final Animation slideAnimation;
  final Animation fadeNameAnimation;
  final Animation<double> backgroundOpacity;

  final Size size;
}
