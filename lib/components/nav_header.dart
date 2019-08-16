import 'package:flutter_web/material.dart';
import 'package:kt_website/animations/animations.dart';
import 'components.dart';
import 'package:kt_website/utils/utils.dart';
import 'package:kt_website/models/models.dart';

class NavHeader extends StatelessWidget {
  NavHeader(this.controller, this.size)
      : animation = WebPageEnterAnimation(controller, size);

  final AnimationController controller;
  final WebPageEnterAnimation animation;
  final Size size;
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Opacity(
            opacity: animation.logoAnimation.value,
            child: Logo(),
          ),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: <Widget>[
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.navBtnAnimation1.value, 0.0),
                  child: NavButton(
                    onPressed: () {
                      AppStateContainer.of(context).changePage(Page.EDUCATION);
                    },
                    color: Colors.white,
                    text: "Education",
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.navBtnAnimation2.value, 0.0),
                  child: NavButton(
                    onPressed: () {
                      AppStateContainer.of(context).changePage(Page.WORK);
                    },
                    color: Colors.white,
                    text: "  Work  ",
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.navBtnAnimation3.value, 0.0),
                  child: NavButton(
                    onPressed: () {
                      AppStateContainer.of(context).changePage(Page.PROJECTS);
                    },
                    color: Colors.white,
                    text: "Projects",
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.navBtnAnimation4.value, 0.0),
                  child: NavButton(
                    onPressed: () {
                      AppStateContainer.of(context).changePage(Page.CONTACT);
                    },
                    color: Colors.white,
                    text: " Contact ",
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
