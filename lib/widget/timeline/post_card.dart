import 'package:flutter/material.dart';
import 'package:pooria50/data/model/post_model.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Username',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(backgroundColor: Colors.pink),
            subtitle: Text(post.location,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            trailing: Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
          ),
          Image.network(post.url,
              height: 300, width: double.infinity, fit: BoxFit.cover),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  "123",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text("likes",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("username",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold)),
                Text("pooria",
                    style: TextStyle(fontSize: 13, color: Colors.black87)),
                Text("malkei",
                    style: TextStyle(fontSize: 13, color: Colors.black87)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
