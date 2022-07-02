import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class MiniBubbleStories extends StatefulWidget {
  late String username, url;

  MiniBubbleStories({Key? key, required this.username, required this.url})
      : super(key: key);

  @override
  State<MiniBubbleStories> createState() => _MiniBubbleStoriesState();
}

class _MiniBubbleStoriesState extends State<MiniBubbleStories>
    with SingleTickerProviderStateMixin {
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 10.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              RotationTransition(
                turns: reverse,
                child: DashedCircle(
                  gapSize: gap.value,
                  dashes: 40,
                  color: Colors.pinkAccent,
                  child: RotationTransition(
                    turns: reverse,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: NetworkImage(widget.url),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(widget.username,
              style: TextStyle(
                  fontSize: 16, color: Colors.black87, fontFamily: 'BNazanin')),
        ),
      ],
    );
  }
}
