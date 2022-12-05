import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text("${info[index]['name']}",
                          style: TextStyle(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("${info[index]['message']}",
                            style: TextStyle(fontSize: 15)),
                      ),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage("${info[index]['profilePic']}"),
                      ),
                      trailing: Text("${info[index]['time']}",
                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ),
                  ),
                ),
                Divider(
                  color: dividerColor,
                  indent: 85,
                ),
              ],
            );
          })),
    );
  }
}
