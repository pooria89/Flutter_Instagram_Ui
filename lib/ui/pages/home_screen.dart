import 'package:flutter/material.dart';

import '../../widget/custom_textview.dart';
import '../../widget/main/bubble_stories.dart';
import '../../widget/main/user_post.dart';

class HomeScreen extends StatelessWidget {
  final List people = [
    "test1",
    "test2",
    "test3",
    "test4",
    "test5",
    "test6",
    "test7",
    "test8",
    "test9",
    "test10"
  ];

  final List<String> imagesList = [
    "https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg",
    "https://images.wallpaperscraft.com/image/single/coffee_beans_coffee_cup_198851_1920x1080.jpg",
    "https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg",
    "https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg",
    "https://images4.alphacoders.com/895/thumb-1920-895296.jpg",
    "https://img.freepik.com/free-photo/wooden-table-with-cup-coffee_1203-1631.jpg?w=1380&t=st=1656925514~exp=1656926114~hmac=e51bf2786df625542db5aa9b406769b1e0f0d2d255787153e5df9e2e29248d6f",
    "https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg",
    "https://img.freepik.com/free-photo/close-up-hands-barista-make-latte-coffee-art-paint_1150-12161.jpg?w=1380&t=st=1656925517~exp=1656926117~hmac=d49295f5889876fa79e8db74cac25c0a279065be9f5966156d1ff1513cdd8c8c"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[100],
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextView(
              text: "Instagram",
              size: 22,
              color: Colors.black87,
              fontFamily: 'BNazanin',
              fontWeight: FontWeight.bold,
            ),
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
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: [
                        BubbleStories(
                          username: people[index],
                          url: imagesList[index],
                        ),
                      ],
                    ),
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
