import 'package:flutter/material.dart';
import 'package:pooria50/widget/main/activity_news.dart';

import '../../widget/custom_textview.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[400],
        title: CustomTextView(
          text: "Activity",
          size: 18,
          color: Colors.black,
          fontFamily: 'BNazanin',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [ActivityNews(), ActivityNews(), ActivityNews()],
      ),
    );
  }
}
