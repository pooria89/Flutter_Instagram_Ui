import 'package:flutter/material.dart';
import 'package:pooria50/widget/custom_textview.dart';
import 'package:pooria50/widget/reel/reel_detail.dart';
import 'package:pooria50/widget/reel/reel_side_action_bar.dart';

class ReelScreen extends StatelessWidget {
  ReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: CustomTextView(text: "Reels"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://picsum.photos/id/${index + 1047}/800/1080'))),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment(0, -5.1),
                        end: Alignment(0, 0.1),
                      )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(flex: 14, child: ReelDetail()),
                            Flexible(
                              flex: 2,
                              child: ReelSideActionBar(),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
