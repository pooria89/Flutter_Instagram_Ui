import 'package:flutter/material.dart';

import '../../widget/main/bubble_stories.dart';
import '../../widget/main/user_post.dart';

class HomeScreen extends StatelessWidget {
  final List people = ["pooria", "qazal", "mamad", "alireza", "leila", "saba"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                    fontFamily: 'BNazanin')),
            Icon(
              Icons.send,
              size: 25.0,
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
                  return BubbleStories(
                    username: "pooria",
                    url: "https://wallpaperaccess.com/full/3174207.jpg",
                  );
                }),
          ),
          // Post
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return PostWidget(name: people[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
