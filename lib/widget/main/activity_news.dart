import 'package:flutter/material.dart';

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
            Text(
              'pooria45',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BNazanin'),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'liked your post.',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  fontFamily: 'BNazanin'),
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
