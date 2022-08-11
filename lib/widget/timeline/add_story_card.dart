import 'package:flutter/material.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://image.stern.de/30669284/t/8J/v2/w960/r1.7778/-/20--fc-barcelona--messi-liess-beim-barca-abschied-eine-auszeichnung-in-der-kabine-zurueck--aufmacher-.jpg',
              ),
              backgroundColor: Colors.pink,
              radius: 33,
            ),
            Positioned(
              top: 42,
              left: 42,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(Icons.add_outlined),
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          'Your Story',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
