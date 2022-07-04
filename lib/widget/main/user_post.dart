import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pooria50/widget/main/mini_bubble_stories.dart';

final List<String> imagesList = [
  "https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg",
  "https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg"
];
final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];

class PostWidget extends StatefulWidget {
  late String name;

  PostWidget({Key? key, required this.name}) : super(key: key);

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        color: Colors.grey[800],
                        image: DecorationImage(
                            image: AssetImage("asset/123.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "cafegardi_tehran",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontFamily: 'BNazanin'),
                  ),
                ],
              ),
              Icon(
                Icons.menu_outlined,
                color: Colors.black87,
              ),
            ],
          ),
        ),
        Column(
          children: [
            GestureDetector(
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 300,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _currentIndex = index;
                        },
                      );
                    }),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          margin: EdgeInsets.only(
                            top: 10.0,
                            bottom: 2.0,
                          ),
                          elevation: 3.0,
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.nan,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.2)
                        : Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.favorite,
                size: 25,
                color: Colors.red,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.chat_bubble_outline,
                size: 25,
                color: Colors.grey[700],
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.share,
                size: 25,
                color: Colors.grey[700],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            children: [
              MiniBubbleStories(url: imagesList.first),
              MiniBubbleStories(url: imagesList[1]),
              MiniBubbleStories(url: imagesList[2]),
              SizedBox(
                width: 5,
              ),
              Text("Liked by ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: 'BNazanin')),
              Text("Cafegardi_tehran ",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                      fontFamily: 'BNazanin')),
            ],
          ),
        )
      ],
    );
  }
}
