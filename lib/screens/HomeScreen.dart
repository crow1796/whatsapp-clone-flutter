import 'package:flutter/material.dart';
import 'CameraScreen.dart';
import 'ChatScreen.dart';
import 'StatusScreen.dart';
import 'CallScreen.dart';

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
                backgroundColor: Theme.of(context).accentColor,
                title: Text("WhatsApp Clone"),
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
                    Container(child: Icon(Icons.search), margin: EdgeInsets.all(5.0)),
                    Container(child: Icon(Icons.more_vert), margin: EdgeInsets.all(5.0))
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