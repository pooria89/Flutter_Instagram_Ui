import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Instagram",
            style: GoogleFonts.bebasNeue(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              Icon(
                Icons.share,
                color: Colors.black,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
