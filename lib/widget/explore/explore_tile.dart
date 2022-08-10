import 'package:flutter/material.dart';
import 'package:pooria50/data/model/post_model.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(child: Image(image: NetworkImage(post.url))),
      Container(
        padding: EdgeInsets.all(8),
        child: Icon(post.postId == "0" || post.postId == "10" ? Icons.collections_rounded : null , color: Colors.white,),
      )],
    );
  }
}
