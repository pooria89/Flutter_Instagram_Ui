import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pooria50/widget/explore/category_bar.dart';
import 'package:pooria50/widget/explore/custom_explore_appbar.dart';
import 'package:pooria50/widget/explore/persistent_header.dart';
import 'package:flutter/widgets.dart';


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
                child: CategoryBar(categories: ["Blogger", "Sport", "Health","Women","Men","Football"]),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                staggeredTileBuilder: (int index){
              int modedIndex = index %20;
              int cXCellCount = modedIndex == 11 ? 2: 1;
              double mXCelleCount = 1 ;
              if(modedIndex ==2 || modedIndex ==11) {
                mXCelleCount = 2;
              }
              return StaggeredTile.count(cXCellCount,mXCelleCount);
                },
                itemBuilder: (BuildContext context , int index){
              return Container(
                color: Colors.grey.shade200,
              );
                },
                itemCount: 200)

          ],
        ),
      ),
    );
  }
}
