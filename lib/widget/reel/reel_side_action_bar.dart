import 'package:flutter/material.dart';

class ReelSideActionBar extends StatelessWidget {
  final double _iconSize = 28;

  const ReelSideActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text("1.14k",style: TextStyle(fontSize: 15,color: Colors.white),),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send_outlined),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text("56",style: TextStyle(fontSize: 15,color: Colors.white),),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://image.stern.de/30669284/t/8J/v2/w960/r1.7778/-/20--fc-barcelona--messi-liess-beim-barca-abschied-eine-auszeichnung-in-der-kabine-zurueck--aufmacher-.jpg'))),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
