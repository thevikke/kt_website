import 'package:flutter_web/material.dart';
import 'animations/animations.dart';
import 'components/components.dart';
import 'utils/utils.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(
    this.controller,
  ) : animation = WebPageEnterAnimation(controller);

  final AnimationController controller;
  final WebPageEnterAnimation animation;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.blue,
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Stack(
              children: [
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
                        ProfileInfo(),
                        SocialLinks(),
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
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
