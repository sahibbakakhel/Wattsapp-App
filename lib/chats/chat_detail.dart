

import 'package:flutter/material.dart';
import 'package:wattsapp1/chats/massage_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/sahib1.jpg'),
            ),
            Padding(padding: EdgeInsets.only(left: 8,)),
            Text('Sahib'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (() {
              print('click on video call');
            }),
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: (() {
              print('click on  phone');
            }),
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: (() {
              print('click on three dart');
            }),
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MassagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red,width: 0.0)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red,width: 0.0)
                      ),
                      hintText: 'Enter the massage',
                    ),
                  ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
