import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class MobileScreenLayout extends StatefulWidget {
  MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_outlined, color: Colors.grey)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.grey)),
          ],
          bottom: TabBar(
              indicatorColor: tabColor,
              labelColor: tabColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 4,
              unselectedLabelColor: Colors.grey,
              tabs: [
                // SizedBox(
                //   width: 1.5,
                //   child: Tab(
                //     icon: Icon(Icons.groups),
                //   ),
                // ),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS')
              ]),
        ),
      ),
    );
  }
}
