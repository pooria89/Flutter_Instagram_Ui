import 'package:flutter/material.dart';

import '../../util/main/explore_grid.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[700],
                ),
                Container(child: TextField(
                  onTap: () {
                    print('Search');
                  },
                ))
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(imageUrl: "asset/1.jpeg"),
    );
  }
}
