import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller, this.size)
      : slideAnimation = Tween(begin: 0.0, end: size.height).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.300,
              0.400,
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
        backgroundOpacity = Tween(begin: 1.0, end: 0.7).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              0.600,
              curve: Curves.decelerate,
            ),
          ),
        ),
        pictureSize = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.600,
              0.800,
              curve: Curves.elasticOut,
            ),
          ),
        ),
        navBtnAnimation1 = Tween(begin: -100, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.400,
              0.700,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        navBtnAnimation2 = Tween(begin: -100, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.500,
              0.800,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        navBtnAnimation3 = Tween(begin: -100, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.600,
              0.900,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        navBtnAnimation4 = Tween(begin: -100, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.700,
              1.000,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        logoAnimation = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.700,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        ),
        listviewAnimation =
            Tween<Offset>(begin: Offset(50, 50), end: Offset(0.0, 0.0)).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.500,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );

  final AnimationController controller;
  final Animation slideAnimation;
  final Animation fadeNameAnimation;
  final Animation backgroundOpacity;
  final Animation pictureSize;
  final Animation navBtnAnimation1;
  final Animation navBtnAnimation2;
  final Animation navBtnAnimation3;
  final Animation navBtnAnimation4;
  final Animation logoAnimation;
  final Animation<Offset> listviewAnimation;

  final Size size;
}
