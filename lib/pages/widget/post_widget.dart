import 'package:flutter/material.dart';
import 'package:responsive2/constantes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(IMAGE_NETWORK),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                    child: Text(
                  "José da Silva",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
                GestureDetector(
                  child: IconButton(
                    icon: Icon(
                      Icons.more_horiz_outlined,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Image.network(
            IMAGE_NETWORK,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message_outlined, color: Colors.white)),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.white)),
                const SizedBox(
                  width: 4,
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border, color: Colors.white)),
                const SizedBox(
                  width: 4,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por José da Silva e outra 300 pessoas",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Há 1 hora",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            Divider(
              color: Colors.white,
              height: 0.1,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: "Adicionar um comentário",
                          hintStyle:
                              TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Publicar",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
