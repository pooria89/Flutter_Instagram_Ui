import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pooria50/data/model/post_model.dart';
import 'package:pooria50/widget/explore/category_bar.dart';
import 'package:pooria50/widget/explore/custom_explore_appbar.dart';
import 'package:pooria50/widget/explore/explore_tile.dart';
import 'package:pooria50/widget/explore/persistent_header.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomExploreAppbar(),
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistentHeader(
                child: CategoryBar(categories: [
                  "Blogger",
                  "Sport",
                  "Health",
                  "Women",
                  "Men",
                  "Football"
                ]),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                staggeredTileBuilder: (int index) {
                  int modedIndex = index % 20;
                  int cXCellCount = modedIndex == 11 ? 2 : 1;
                  double mXCelleCount = 1;
                  if (modedIndex == 2 || modedIndex == 11) {
                    mXCelleCount = 2;
                  }
                  return StaggeredTile.count(cXCellCount, mXCelleCount);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ExploreTile(
                      post: Post(
                          title: "cafegardi_tehran",
                          location: "Tehran",
                          caption: "This is the best Page",
                          url:
                              "https://picsum.photos/id/${1047 + index}/400/${index % 20 == 2 ? 805 : 400}",
                          postedTimeAgo: "10 min ago",
                          postId: "10"));
                },
                itemCount: 200)
          ],
        ),
      ),
    );
  }
}
