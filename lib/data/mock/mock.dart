import 'package:pooria50/data/model/story_model.dart';

import '../model/post_model.dart';

final List<Story> stories = [
  Story(
      id: "0",
      url:
          'https://image.stern.de/30669284/t/8J/v2/w960/r1.7778/-/20--fc-barcelona--messi-liess-beim-barca-abschied-eine-auszeichnung-in-der-kabine-zurueck--aufmacher-.jpg',
      username: "pooria50"),
  Story(
      id: "1",
      url:
          'https://image.stern.de/30669284/t/8J/v2/w960/r1.7778/-/20--fc-barcelona--messi-liess-beim-barca-abschied-eine-auszeichnung-in-der-kabine-zurueck--aufmacher-.jpg',
      username: "parsa5"),
];

final List<Post> posts = [
  Post(
      title: "title1",
      location: "iran",
      caption: "pizza",
      url: 'https://picsum.photos/id/1062/400/400',
      postedTimeAgo: "1 min ago",
      postId: "1"),
  Post(
      title: "title2",
      location: "spain",
      caption: "sandwich",
      url: 'https://picsum.photos/id/1062/400/400',
      postedTimeAgo: "11 min ago",
      postId: "2"),
  Post(
      title: "title7",
      location: "araq",
      caption: "coffee",
      url: 'https://picsum.photos/id/1062/400/400',
      postedTimeAgo: "8 min ago",
      postId: "3")
];
