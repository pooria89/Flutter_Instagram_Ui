import 'package:flutter/material.dart';

import '../../util/main/explore_grid.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[300],
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
