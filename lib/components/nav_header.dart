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
      largeScreen: _buildLargeScreen(context),
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    return Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.spaceAround
          : MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Opacity(
          opacity: animation.logoAnimation.value,
          child: Logo(),
        ),
        if (ResponsiveWidget.isSmallScreen(context))
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        if (!ResponsiveWidget.isSmallScreen(context))
          NavigationRow(controller, size),
      ],
    );
  }
}

class NavigationRow extends StatelessWidget {
  NavigationRow(this.controller, this.size)
      : animation = WebPageEnterAnimation(controller, size);

  final AnimationController controller;
  final WebPageEnterAnimation animation;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: <Widget>[
              Transform(
                transform: Matrix4.translationValues(
                    0.0, animation.navBtnAnimation1.value, 0.0),
                child: NavButton(
                  onPressed: () {
                    AppStateContainer.of(context).changePage(Page.EDUCATION);
                  },
                  color: Colors.white,
                  splashColor: Colors.indigo[600],
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
                  splashColor: Colors.blue[600],
                  text: "Work",
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
                  splashColor: Colors.red,
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
                  splashColor: Colors.blueAccent,
                  text: "Contact",
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NavButton(
                onPressed: () {
                  AppStateContainer.of(context).changePage(Page.EDUCATION);
                  Navigator.of(context).pop();
                },
                color: Colors.white,
                text: "Education",
              ),
              NavButton(
                onPressed: () {
                  AppStateContainer.of(context).changePage(Page.WORK);
                  Navigator.of(context).pop();
                },
                color: Colors.white,
                text: "Work",
              ),
              NavButton(
                onPressed: () {
                  AppStateContainer.of(context).changePage(Page.PROJECTS);
                  Navigator.of(context).pop();
                },
                color: Colors.white,
                text: "Projects",
              ),
              NavButton(
                onPressed: () {
                  AppStateContainer.of(context).changePage(Page.CONTACT);
                  Navigator.of(context).pop();
                },
                color: Colors.white,
                text: "Contact",
              ),
            ],
          );
  }
}
