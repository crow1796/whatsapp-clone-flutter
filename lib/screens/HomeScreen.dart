import 'package:flutter/material.dart';

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
                title: Text("WhatsApp Clone"),
                elevation: 0.7,
                bottom: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                        Tab(icon: Icon(Icons.camera)),
                        Tab(text: "CHATS"),
                        Tab(text: "STATUS"),
                        Tab(text: "CALLS"),
                    ],
                ),
            ),
            body: TabBarView(
                controller: _tabController,
                children: <Widget>[
                    Container(child: Icon(Icons.camera)),
                    Container(child: Text("CHATS")),
                    Container(child: Text("STATUS")),
                    Container(child: Text("CALLS")),
                ],
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(Icons.message),
                foregroundColor: Colors.white,
                onPressed: () => print("asdasdas"),
            ),
        );
    }
    
}