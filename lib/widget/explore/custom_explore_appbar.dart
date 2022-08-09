import 'package:flutter/material.dart';

class CustomExploreAppbar extends StatelessWidget {
  const CustomExploreAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      automaticallyImplyLeading: false,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 24,
              color: Colors.grey.shade500,
            ),
          ),
        ),
      ),
    );
  }
}
