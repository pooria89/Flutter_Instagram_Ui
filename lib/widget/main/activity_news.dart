import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityNews extends StatelessWidget {
  const ActivityNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
                image: DecorationImage(
                  image: AssetImage("asset/1.jpeg"),
                )),
          ),
        ),
        Text(
          'pooria45',
          style: GoogleFonts.bebasNeue(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(
          'liked your post.',
          style: GoogleFonts.bebasNeue(color: Colors.grey[700], fontSize: 14),
        ),
        Row(
          children: [Container(width: 50, height: 50, color: Colors.grey[500])],
        )
      ],
    );
  }
}
