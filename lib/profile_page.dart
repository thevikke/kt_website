import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:kt_website/models/app_state_model.dart';
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
      smallScreen: Scaffold(
        backgroundColor: Colors.black,
        body: _buildSmallScreen(),
      ),
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        body: _buildLargeScreen(),
      ),
    );
  }

  Widget _buildLargeScreen() {
    return AnimatedBuilder(
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
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
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
                        Column(
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
                            Opacity(
                              opacity: animation.logoAnimation.value,
                              child: profileData(context),
                            )
                          ],
                        ),
                        Opacity(
                            opacity: animation.logoAnimation.value,
                            child: AccomplishmentsList()),
                      ],
                    ),
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
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget _buildSmallScreen() {
    return AnimatedBuilder(
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
                padding: EdgeInsets.all(MediaQuery.of(context).size.height *
                    (ResponsiveWidget.isSmallScreen(context) ? 0.02 : 0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NavHeader(controller, size),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Transform(
                      transform: Matrix4.diagonal3Values(
                        animation.pictureSize.value,
                        animation.pictureSize.value,
                        1.0,
                      ),
                      alignment: Alignment.center,
                      child: ProfilePicture(),
                    ),
                    Opacity(
                      opacity: animation.logoAnimation.value,
                      child: profileData(context),
                    ),
                    Opacity(
                        opacity: animation.logoAnimation.value,
                        child: AccomplishmentsList()),
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
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget profileData(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hello! My name is",
          textScaleFactor: 2,
          style: TextStyle(color: Colors.blue[600]),
        ),
        Text(
          "Kristian\nTuusjärvi",
          textScaleFactor: 5,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Software engineering student and Flutter hobbyist\n",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              shape: StadiumBorder(),
              child: Text("Contact"),
              color: Colors.blue[600],
              onPressed: () {
                AppStateContainer.of(context).changePage(Page.CONTACT);
              },
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              width: 20,
            ),
            // OutlineButton(
            //   borderSide: BorderSide(
            //     color: Colors.blue,
            //   ),
            //   shape: StadiumBorder(),
            //   child: Text("Contact"),
            //   color: Colors.blue,
            //   onPressed: () {},
            //   padding: EdgeInsets.all(10),
            // )
          ],
        )
      ],
    );
  }
}
