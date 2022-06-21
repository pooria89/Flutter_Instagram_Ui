import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/main/bubble_stories.dart';
import '../../util/main/user_post.dart';

class HomeScreen extends StatelessWidget {
  final List people = ["pooria", "qazal", "mamad", "alireza", "leila", "saba"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Timeline",
              style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.black87),
            ),
            Icon(
              Icons.send,
              color: Colors.grey[800],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Story
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(name: people[index]);
                }),
          ),
          // Post
          Expanded(
              child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return PostWidget(name: people[index]);
            },
          ))
        ],
      ),
    );
  }
}
