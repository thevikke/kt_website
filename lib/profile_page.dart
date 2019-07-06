import 'package:flutter_web/material.dart';
import 'package:kt_website/animations/animations.dart';
import 'components/components.dart';
import 'utils/utils.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  WebPageEnterAnimation animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2200),
      vsync: this,
    );
    _controller.forward();
    animation = WebPageEnterAnimation(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              offset: Offset(0, -MediaQuery.of(context).size.height),
              child: Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width / 2,
                  MediaQuery.of(context).size.height),
              child: Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
