import 'package:flutter/material.dart';

import '../../widget/main/explore_grid.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore ... ",
              style: TextStyle(
                  fontSize: 20, color: Colors.black87, fontFamily: 'BNazanin'),
            ),
            Icon(
              Icons.search,
              color: Colors.grey[800],
            )
          ],
        ),
      ),
      body: ExploreGrid(imageUrl: "asset/234.png"),
    );
  }
}
