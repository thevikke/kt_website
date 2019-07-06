import 'package:flutter_web/material.dart';

class WebPageEnterAnimation {
  WebPageEnterAnimation(this.controller);

  final AnimationController controller;
  final Animation<Offset> backdropOpacity;
}
