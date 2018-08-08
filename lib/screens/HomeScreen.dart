import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/CallScreen.dart';
import 'package:whatsapp_clone/screens/CameraScreen.dart';
import 'package:whatsapp_clone/screens/ChatScreen.dart';
import 'package:whatsapp_clone/screens/StatusScreen.dart';

class HomeScreen extends StatefulWidget{
    @override
    State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

    TabController _tabController;

    @override
    void initState(){
        super.initState();
        _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                title: Text("WhatsApp"),
                elevation: 0.7,
                bottom: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                        Tab(icon: Icon(Icons.camera)),
                        Tab(icon: Icon(Icons.message)),
                        Tab(icon: Icon(Icons.radio_button_checked)),
                        Tab(icon: Icon(Icons.call)),
                    ],
                ),
                actions: <Widget>[
                    Padding(child: Icon(Icons.search), padding: EdgeInsets.all(5.0)),
                    Padding(child: Icon(Icons.more_vert), padding: EdgeInsets.all(5.0))
                ],
            ),
            body: TabBarView(
                controller: _tabController,
                children: <Widget>[
                    CameraScreen(),
                    ChatScreen(),
                    StatusScreen(),
                    CallScreen(),
                ],
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(Icons.message, color: Colors.white),
                onPressed: () => print("asdasdas"),
            ),
        );
    }
    
}