import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive2/constantes.dart';
import 'package:responsive2/pages/widget/suggestion_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
        visible: false,
        visibleWhen: [Condition.largerThan(name: TABLET)],
        child: Container(
          margin: EdgeInsets.fromLTRB(35, 56, 20, 0),
          width: 300,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 29,
                    backgroundImage: NetworkImage(IMAGE_NETWORK),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "josedasilva",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "josedasilva",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sair",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sugestões para você",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Ver tudo",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SuggestionItem(),
              SuggestionItem(),
              SuggestionItem(),
            ],
          ),
        ));
  }
}
