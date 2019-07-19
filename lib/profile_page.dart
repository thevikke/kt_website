import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';
import 'animations/animations.dart';
import 'components/components.dart';
import 'utils/utils.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(this.controller, this.size, this.background)
      : animation = WebPageEnterAnimation(controller, size);

  final AnimationController controller;
  final WebPageEnterAnimation animation;
  final Size size;
  final DecorationImage background;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Stack(
              children: [
                Opacity(
                  opacity: animation.backgroundOpacity.value,
                  child: Container(
                    decoration: BoxDecoration(
                      image: background,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        NavHeader(),
                        Transform(
                          transform: Matrix4.diagonal3Values(
                            animation.pictureSize.value,
                            animation.pictureSize.value,
                            1.0,
                          ),
                          alignment: Alignment.center,
                          child: ProfilePicture(),
                        ),
                        // ProfileInfo(),
                        //SocialLinks(),
                      ],
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.slideAnimation.value, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black,
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      MediaQuery.of(context).size.width / 2,
                      -animation.slideAnimation.value,
                      0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Opacity(
                    opacity: animation.fadeNameAnimation.value,
                    child: Text(
                      "KRISTIAN TUUSJÄRVI",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
