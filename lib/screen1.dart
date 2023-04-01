import 'package:flutter/material.dart';
import 'package:wattsapp1/calls/calls.dart';
import 'package:wattsapp1/camra/camra.dart';
import 'package:wattsapp1/chats/chats.dart';
import 'package:wattsapp1/chats/chats_model.dart';
import 'package:wattsapp1/status/status.dart';
class Screen1 extends StatefulWidget {
  static const String id = 'screen1';
  const Screen1({super.key});

  //final String title;
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // it for tab list
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',),
  ];
  // it is for tab controllar
  @override
  void initState(){
    _tabController = TabController(length: 4,initialIndex: 0, vsync: this)
    ..addListener(() {setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // title: Text(widget.title),
        title:  Center(child: Text('WhatsApp')),
        actions: [
          IconButton(
            onPressed: (() {
              print('search button click');
            }),
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (() {
              print('three dot button click');
            }),
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          tabs: topTabs,
          indicatorColor: Colors.white,
          controller: _tabController,
          ),
        ),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            accountName: Text('SAHIB NANGTIAL'), 
            accountEmail: Text('sahibnangyal116688@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("images/sahib1.jpg"),),
            ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log out'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('My phone'),
          ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camra(),
          Chats(),
          Status(),
          Calls(),
        ],
        ),
      floatingActionButton: _getFBA(),
    );
  }
    _getFBA(){
      if(_tabController.index == 1){
        return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.message,color: Colors.white,),
          onPressed: () => print('Open Chart')
          );
      }
      else if(_tabController.index == 2){
        return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.camera_alt,color: Colors.white,),
          onPressed: () => print('Open Chart')
          );
      }
      else if(_tabController.index == 3){
        return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.call,color: Colors.white,),
          onPressed: () => print('Open Chart')
          );
      }
      else { 
        return null;
      }
    }
    
}

