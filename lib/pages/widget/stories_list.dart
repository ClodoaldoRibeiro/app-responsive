import 'package:flutter/material.dart';
import 'package:responsive2/pages/widget/stories_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: mobile ? 12 : 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: 50,
        itemBuilder: (context, index) {
          return StoriesCircle();
        },
      ),
    );
  }
}
