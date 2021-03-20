import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            Text("Flutter",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Billabong",
                    fontWeight: FontWeight.w500)),
            Container(
              height: 30,
              width: 200,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, isCollapsed: true),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
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
                  backgroundImage: NetworkImage(
                      "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
