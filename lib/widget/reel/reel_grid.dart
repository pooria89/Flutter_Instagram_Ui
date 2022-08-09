import 'package:flutter/material.dart';

class ReelGrid extends StatefulWidget {
  final String imageUrl;
  ReelGrid({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<ReelGrid> createState() => _ReelGridState();
}

class _ReelGridState extends State<ReelGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageUrl), fit: BoxFit.fill),
            ),
          ),
        );
      },
    );
  }
}
