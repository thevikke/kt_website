import 'package:flutter_web/material.dart';
import 'package:kt_website/profile_page.dart';

main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          fontFamily: "GoogleSansRegular"),
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  DecorationImage _image;
  @override
  void initState() {
    super.initState();
    _image = DecorationImage(
      image: AssetImage("background2.jpg"),
      alignment: Alignment.center,
      fit: BoxFit.fill,
    );
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        return ProfilePage(_controller, size, _image);
      },
    );
  }
}
