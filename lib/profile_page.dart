import 'package:flutter_web/material.dart';
import 'package:flutter_web_ui/ui.dart' as ui;
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
        backgroundColor: Colors.grey,
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Stack(
              children: [
                Opacity(
                  opacity: animation.backdropOpacity.value,
                  child: Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Background.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                    ),
                  )),
                ),
                BackdropFilter(
                  filter: ui.ImageFilter.blur(
                    sigmaX: animation.backdropBlur.value,
                    sigmaY: animation.backdropBlur.value,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
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
                        // NavHeader(),
                        // ProfileInfo(),
                        // SocialLinks(),
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
