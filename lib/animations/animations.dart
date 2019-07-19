import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller, this.size)
      : slideAnimation = Tween(begin: 0.0, end: size.height).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.400,
              0.600,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeNameAnimation = Tween(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.200,
              0.400,
              curve: Curves.ease,
            ),
          ),
        ),
        backgroundOpacity = Tween(begin: 1.0, end: 0.4).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.600,
              1.000,
              curve: Curves.decelerate,
            ),
          ),
        ),
        pictureSize = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.600,
              0.900,
              curve: Curves.elasticOut,
            ),
          ),
        );

  final AnimationController controller;
  final Animation slideAnimation;
  final Animation fadeNameAnimation;
  final Animation backgroundOpacity;
  final Animation pictureSize;

  final Size size;
}
