import 'package:flutter/material.dart';
import 'package:pooria50/data/mock/mock.dart';
import 'package:pooria50/widget/timeline/add_story_card.dart';
import 'package:pooria50/widget/timeline/custom_timeline_appbar.dart';
import 'package:pooria50/widget/timeline/post_card.dart';

import '../../widget/timeline/story_card.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomTimelineAppbar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: stories.length + 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.white,
                        width: 80,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: index == 0
                            ? AddStoryCard()
                            : StoryCard(story: stories[index - 1]),
                      );
                    }),
              ),
              Divider(
                height: 1,
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return PostCard(
            post: posts[index],
          );
        }, childCount: posts.length))
      ],
    );
  }
}
