import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pooria50/widget/main/bubble_storiesWidget.dart';
import 'package:pooria50/widget/main/post_Widget.dart';

class HomeScreen extends StatelessWidget {
  final List people = ["pooria", "qazal", "mamad", "alireza", "leila", "saba"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "Timeline",
          style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(name: people[index]);
                }),
          ),
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
