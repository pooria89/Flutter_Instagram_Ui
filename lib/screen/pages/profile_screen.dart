import 'package:flutter/material.dart';
import 'package:pooria50/widget/custom_textview.dart';

import '../../widget/main/bubble_stories.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final List people = [
    "pooria50",
    "fateme4",
    "r.hatami",
    "saberi.m",
    "majid.3",
    "nima_43",
    "saba32874",
    "arabi.qw",
    "erfan43",
    "somayeh3"
  ];

  final List<String> imagesList = [
    "https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg",
    "https://images.wallpaperscraft.com/image/single/coffee_beans_coffee_cup_198851_1920x1080.jpg",
    "https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg",
    "https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg",
    "https://images4.alphacoders.com/895/thumb-1920-895296.jpg",
    "https://img.freepik.com/free-photo/wooden-table-with-cup-coffee_1203-1631.jpg?w=1380&t=st=1656925514~exp=1656926114~hmac=e51bf2786df625542db5aa9b406769b1e0f0d2d255787153e5df9e2e29248d6f",
    "https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg",
    "https://img.freepik.com/free-photo/close-up-hands-barista-make-latte-coffee-art-paint_1150-12161.jpg?w=1380&t=st=1656925517~exp=1656926117~hmac=d49295f5889876fa79e8db74cac25c0a279065be9f5966156d1ff1513cdd8c8c"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1.0,
        centerTitle: true,
        title: CustomTextView(
          text: "Cafegardi_tehran",
          size: 18,
          color: Colors.black87,
          fontFamily: 'BNazanin',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(imagesList[6]),
                  ),
                  Column(
                    children: [
                      CustomTextView(
                        text: "30",
                        size: 17,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                        fontWeight: FontWeight.bold,
                      ),
                      CustomTextView(
                        text: "Posts",
                        size: 15,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextView(
                        text: "526",
                        size: 17,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                        fontWeight: FontWeight.bold,
                      ),
                      CustomTextView(
                        text: "Followers",
                        size: 15,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextView(
                        text: "43875",
                        size: 17,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                        fontWeight: FontWeight.bold,
                      ),
                      CustomTextView(
                        text: "Following",
                        size: 15,
                        color: Colors.black87,
                        fontFamily: 'BNazanin',
                      ),
                    ],
                  ),
                ],
              )),
          // dokmeha
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Center(
              child: Column(
                children: [
                  CustomTextView(
                    text: "کافه گردی | رستوران گردی",
                    size: 16,
                    color: Colors.black,
                    fontFamily: 'BNazanin',
                    fontWeight: FontWeight.bold,
                  ),
                  CustomTextView(
                    text: "آشنایی با انواع کافه و رستوران های شهر تهران",
                    size: 14,
                    color: Colors.black87,
                    fontFamily: 'BNazanin',
                  ),
                  CustomTextView(
                    text: "اولین و تخصصی ترین پیج کافه گردی تهران",
                    size: 14,
                    color: Colors.black87,
                    fontFamily: 'BNazanin',
                  ),
                ],
              ),
            ),
          ),
          // Buttons
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    minimumSize: const Size.fromHeight(
                        40), // fromHeight use double.infinity as width and 40 is the height
                  ),
                  onPressed: () {},
                  child: CustomTextView(
                    text: "Edit Profile",
                    size: 16,
                    color: Colors.white,
                    fontFamily: 'BNazanin',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0)),
                          onPressed: () {},
                          child: CustomTextView(
                            text: "Promotion",
                            size: 15,
                            color: Colors.black87,
                            fontFamily: 'BNazanin',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0)),
                          onPressed: () {},
                          child: CustomTextView(
                            text: "Insight",
                            size: 15,
                            color: Colors.black87,
                            fontFamily: 'BNazanin',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4.0)),
                        color: Colors.white,
                        onPressed: () {},
                        child: CustomTextView(
                          text: "Contact",
                          size: 15,
                          color: Colors.black87,
                          fontFamily: 'BNazanin',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                // Story Highlights
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: people.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                            child: Row(
                              children: [
                                BubbleStories(
                                  username: people[index],
                                  url: imagesList[index],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          //footer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Container(
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/1.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
