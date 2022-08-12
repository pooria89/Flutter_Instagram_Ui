import 'package:flutter/material.dart';
import 'package:pooria50/data/model/story_model.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.story}) : super(key: key);

  final Story story;

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
              radius: 30,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(story.url),
            ),
          ),
        ),
        Spacer(),
        Text(story.username)
      ],
    );
  }
}
