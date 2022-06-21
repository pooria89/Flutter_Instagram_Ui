import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: GoogleFonts.bebasNeue(fontSize: 20, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
