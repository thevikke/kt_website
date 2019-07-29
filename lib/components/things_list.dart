import 'dart:async';

import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class ThingsList extends StatefulWidget {
  @override
  _ThingsListState createState() => _ThingsListState();
}

class _ThingsListState extends State<ThingsList> with TickerProviderStateMixin {
  StreamController<int> streamController = StreamController.broadcast();
  Duration _duration = Duration(milliseconds: 500);

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  void startAnimation(var limit, Duration duration) async {
    for (var i = -1; i < limit; i++) {
      await Future.delayed(duration, () {
        streamController.add(i);
      });
    }
  }

  final List<Widget> _children = [
    const Text("terve"),
    const Text("terve"),
    const Text("terve"),
    const Text("terve"),
    const Text("terve"),
    const Text("terve"),
  ];
  @override
  Widget build(BuildContext context) {
    startAnimation(_children.length, _duration);
    return Container(
      width: 300,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _children.length,
        itemBuilder: (context, position) {
          return ItemEffect(
            child: _children[position],
            position: position,
            duration: _duration,
            numStream: streamController.stream,
          );
        },
      ),
    );
  }
}

class ItemEffect extends StatefulWidget {
  final int position;
  final Widget child;
  final Duration duration;
  final Stream<int> numStream;
  ItemEffect({this.position, this.child, this.duration, this.numStream});
  _ItemEffect createState() => _ItemEffect();
}

class _ItemEffect extends State<ItemEffect> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetFloat;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _offsetFloat = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.numStream,
      initialData: -1,
      builder: (context, AsyncSnapshot<int> snapshot) {
        if (snapshot.data >= widget.position && snapshot.data > -1) {
          _controller.forward();
        }
        return SlideTransition(
          position: _offsetFloat,
          child: Card(
            child: Center(
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
