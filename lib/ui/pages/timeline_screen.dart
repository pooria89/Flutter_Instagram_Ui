import 'package:flutter/material.dart';
import 'package:pooria50/widget/timeline/custom_timeline_appbar.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomTimelineAppbar()
      ],
    );
  }
}

