import 'package:flutter/material.dart';
import 'package:responsive2/pages/widget/post_widget.dart';
import 'package:responsive2/pages/widget/responsive_app_bar.dart';
import 'package:responsive2/pages/widget/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            StoriesList(),
            PostWidget(),
            PostWidget(),
            PostWidget(),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
