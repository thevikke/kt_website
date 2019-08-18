import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'animations/animations.dart';
import 'components/components.dart';
import 'utils/utils.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(this.controller, this.size)
      : animation = WebPageEnterAnimation(controller, size);

  final AnimationController controller;
  final WebPageEnterAnimation animation;
  final Size size;
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
                      image: DecorationImage(
                          image: AssetImage("background2.jpg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.center),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NavHeader(controller, size),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Transform(
                              transform: Matrix4.diagonal3Values(
                                animation.pictureSize.value,
                                animation.pictureSize.value,
                                1.0,
                              ),
                              alignment: Alignment.center,
                              child: ProfilePicture(),
                            ),
                            AccomplishmentsList(),
                          ],
                        ),

                        //ProfileInfo(),
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
