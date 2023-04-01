import 'package:flutter/material.dart';
import 'package:wattsapp1/chats/chat_detail.dart';
import 'package:wattsapp1/chats/chats_model.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(chatData[i].avatar),
                    ),
                    title: Text(
                      chatData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      chatData[i].massage,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    trailing: Text(
                      chatData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ChatDetailPage())),
                      );
                    },
                  ),
                ],
              )),
    );
  }
}
