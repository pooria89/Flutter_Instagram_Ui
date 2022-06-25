import 'package:flutter/material.dart';

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
                            image: AssetImage("asset/123.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("pooria",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                          fontFamily: 'BNazanin',
                          fontWeight: FontWeight.bold)),
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
                  image: AssetImage("asset/234.png"), fit: BoxFit.fill),
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
              Text("Liked by ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: 'BNazanin')),
              Text("Pooria ",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'BNazanin')),
            ],
          ),
        )
      ],
    );
  }
}
