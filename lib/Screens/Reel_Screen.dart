import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Data/Reels_json.dart';
import 'package:instagram_clone/Data/search.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:line_icons/line_icons.dart';

class ReelScreen extends StatelessWidget {
  const ReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        itemCount: ReelsData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ReelItem(index: index),
      ),
    );
  }
}

class ReelItem extends StatelessWidget {
  const ReelItem({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appFooterColor,
      child: const Center(
        child: Text(
          "Reels",
          style: TextStyle(color: white, fontSize: 30),
        ),
      ),
    );
  }
}
