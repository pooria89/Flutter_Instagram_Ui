import 'package:flutter/material.dart';

import '../custom_textview.dart';

class ActivityNews extends StatelessWidget {
  const ActivityNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            CustomTextView(
              text: "Cafegardi_tehran",
              size: 16,
              color: Colors.black,
              fontFamily: 'BNazanin',
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: 5,
            ),
            CustomTextView(
              text: "liked your post.",
              size: 14,
              color: Colors.grey[700],
              fontFamily: 'BNazanin',
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[400],
                    image: DecorationImage(
                        image: AssetImage("asset/123.png"), fit: BoxFit.fill)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
