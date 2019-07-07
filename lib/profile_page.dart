import 'package:flutter_web/material.dart';
import 'animations/animations.dart';
import 'components/components.dart';
import 'utils/utils.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(
    this.controller,
  ) : slideAnimation =
            Tween<Offset>(begin: Offset(0, 500), end: Offset(0.0, 0.0)).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              3,
              curve: Curves.ease,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    print(controller.status);
    print(slideAnimation.value);
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: AnimatedPadding(
                duration: Duration(seconds: 1),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
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
            Transform.translate(
              offset: slideAnimation.value,
              child: Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            // Transform.translate(
            //   offset: Offset(MediaQuery.of(context).size.width / 2,
            //       MediaQuery.of(context).size.height),
            //   child: Container(
            //     color: Colors.black,
            //     width: MediaQuery.of(context).size.width / 2,
            //     height: MediaQuery.of(context).size.height,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
