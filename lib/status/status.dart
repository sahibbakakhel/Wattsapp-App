import 'package:flutter/material.dart';
import 'package:wattsapp1/status/status_model.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage('images/sahib1.jpg'),
          ),
          title: Text(
            'My status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          onTap: () {
            print('my own status detail');
          },
        ),
        Divider(),
        Padding(padding: EdgeInsets.only(left: 20.0),
        child: Align(alignment: Alignment.topLeft,
        child: Text('Recent Update',style: TextStyle(fontSize: 15,color: Colors.black54,
        fontWeight: FontWeight.bold),),
        ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: StatusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(StatusData[i].avatar),
                    ),
                    title: Text(
                      StatusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      StatusData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    onTap: () {
                      print('Status Detail');
                    },
                ),
                Divider(
                  height: 10.0,
                )
              ],
            ),
            ),
          ),
      ],
    );
  }
}
