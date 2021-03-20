import 'package:flutter/material.dart';
import 'package:responsive2/constantes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.smallerThan(name: TABLET)],
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        const SizedBox(
          width: 16,
        ),
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage(IMAGE_NETWORK),
        )
      ],
    );
  }
}
