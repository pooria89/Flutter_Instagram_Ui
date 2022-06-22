import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pooria50/widget/main/activity_news.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text("Activity",
            style: GoogleFonts.bebasNeue(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: Column(
        children: [ActivityNews(), ActivityNews(), ActivityNews()],
      ),
    );
  }
}
