import 'package:flutter/material.dart';
import 'package:responsive2/constantes.dart';

class StoriesCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.greenAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(IMAGE_NETWORK),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            "José da Silva",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    );
  }
}
