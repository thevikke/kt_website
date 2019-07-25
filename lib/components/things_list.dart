import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class ThingsList extends StatefulWidget {
  @override
  _ThingsListState createState() => _ThingsListState();
}

class _ThingsListState extends State<ThingsList> with TickerProviderStateMixin {
  var _positionItem = 0;
  AnimationController _controller;
  Animation<Offset> _offsetFloat;
  Duration _duration = Duration(milliseconds: 300);
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: _duration,
    );

    _offsetFloat = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero)
        .animate(_controller);
  }

  void startAnimation(var limit, Duration duration) async {
    for (var i = -1; i < limit; i++) {
      await Future.delayed(duration, () {
        setState(() {
          _positionItem = i;
        });
      });
    }
  }

  List<String> _children = [
    "terve",
    "terve",
    "terve",
    "terve",
    "terve",
    "terve",
    "terve",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _children.length,
        itemBuilder: (context, position) {
          return SlideTransition(
            position: _offsetFloat,
            child: Card(
              child: Center(
                child: Text(_children[position]),
              ),
            ),
          );
        },
      ),
    );
  }
}
