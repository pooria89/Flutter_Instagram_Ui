import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow.shade600, Colors.orange],
              ),
              border: Border.all(
                width: 2,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.black,
            ),
          ),
        ),
        Spacer(),
        Text("username")
      ],
    );
  }
}
