import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0"),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Text(
              info[4]['name'].toString(),
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.grey)),
          ],
        ),
      ]),
    );
  }
}
