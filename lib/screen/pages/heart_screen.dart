import 'package:flutter/material.dart';
import 'package:pooria50/widget/main/activity_news.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text(
          "Activity",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'BNazanin',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [ActivityNews(), ActivityNews(), ActivityNews()],
      ),
    );
  }
}
