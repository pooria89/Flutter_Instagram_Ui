import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTimelineAppbar extends StatelessWidget {
  const CustomTimelineAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverAppBar(
        pinned: true,
        backgroundColor: Colors.black,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text("Instagram",style: GoogleFonts.satisfy(fontSize: 34,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),
        ],
      ),

    );
  }
}
