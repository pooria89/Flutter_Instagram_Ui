import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text("Hello - Follow"),
            leading: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                  'https://image.stern.de/30669284/t/8J/v2/w960/r1.7778/-/20--fc-barcelona--messi-liess-beim-barca-abschied-eine-auszeichnung-in-der-kabine-zurueck--aufmacher-.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: ExpandableText(
              "This is instagram Reel",
              style: TextStyle(fontSize: 15, color: Colors.black),
              expandText: "more",
              collapseText: "less",
              expandOnTextTap: true,
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
