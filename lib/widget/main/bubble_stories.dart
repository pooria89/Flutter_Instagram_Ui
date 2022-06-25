import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;

  BubbleStories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                color: Colors.grey[400],
                image: DecorationImage(
                  image: AssetImage("asset/1.jpeg"),
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
              style: TextStyle(
                  fontSize: 16, color: Colors.black87, fontFamily: 'BNazanin')),
        ],
      ),
    );
  }
}
