import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class WebChatInput extends StatelessWidget {
  const WebChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_file_outlined, color: Colors.grey),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: searchBarColor,
                hintStyle: TextStyle(fontSize: 14),
                hintText: "Type a message",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                contentPadding: EdgeInsets.only(left: 20),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
