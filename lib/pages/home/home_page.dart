import 'package:flutter/material.dart';
import 'package:responsive2/pages/widget/responsive_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size(double.infinity, 56),
      child: ResponsiveAppBar(),
    ));
  }
}
