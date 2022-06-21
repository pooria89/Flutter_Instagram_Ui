import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  final String name;

  PostWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "pooria",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 20, color: Colors.black87),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.chat_bubble_outline),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
          child: Row(
            children: [
              Text(
                "Liked by ",
                style: GoogleFonts.bebasNeue(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Text(
                "Pooria ",
                style:
                    GoogleFonts.bebasNeue(fontSize: 15, color: Colors.black87),
              ),
            ],
          ),
        )
      ],
    );
  }
}
