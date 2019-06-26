import 'package:flutter_web/material.dart';
import 'package:kt_website/profile_page.dart';

main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          fontFamily: "GoogleSansRegular"),
      home: ProfilePage(),
    );
  }
}
