import 'package:flutter/material.dart';
import 'package:pooria50/data/model/post_model.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(child: Image(image: NetworkImage(post.url)));
  }
}
