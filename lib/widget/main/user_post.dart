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
                        image: DecorationImage(
                            image: AssetImage("asset/3.jpg"),
                            fit: BoxFit.fill)),
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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/1.jpeg"), fit: BoxFit.fill),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.chat_bubble_outline,
                color: Colors.grey[700],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.share,
                color: Colors.grey[700],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
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
