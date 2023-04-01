import 'package:flutter/material.dart';
import 'package:wattsapp1/calls/call_model.dart';
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(callData[i].avatar),
                    ),
                    title: Text(
                      callData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: 
                    Row(
                      children: [
                        Container(
                          child: callData[i].callType,
                        ),
                        Text(
                        callData[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.call,size: 25,color: Colors.green,),
                    onTap: () {
                      print('call detail');
                    },
                  ),
                ],
              ),
              ),
    );
  }
}