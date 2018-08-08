import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/Chat.dart';

class ChatScreen extends StatefulWidget{

    final List<Chat> _dummyData = [
        Chat(
            name: "Joshua Tundag", 
            message: "Lorem ipsum dolor", 
            time: "04:02", 
            avatarUrl: "https://pickaface.net/gallery/avatar/acrovin559439058dc7f.png"
        ),
        Chat(
            name: "Kaycee Yeon", 
            message: "Test Message", 
            time: "06:27", 
            avatarUrl: "https://pickaface.net/gallery/avatar/acrovin559439058dc7f.png"
        ),
        Chat(
            name: "Curran Sosa", 
            message: "New to Flutter?", 
            time: "13:57", 
            avatarUrl: "https://pickaface.net/gallery/avatar/acrovin559439058dc7f.png"
        )
    ];
    
    @override
    State<StatefulWidget> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{

    List<Chat> _dummyData;

    @override
    void initState(){
        _dummyData = widget._dummyData;
        super.initState();
    }

    @override
    Widget build(BuildContext context){
        print(_dummyData);
        return ListView.builder(
            itemCount: _dummyData.length,
            itemBuilder: (BuildContext context, int index){
                return Column(
                    children: <Widget>[
                        ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                backgroundImage: NetworkImage(
                                    _dummyData[index].avatarUrl
                                ),
                            ),
                            title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Text(
                                        _dummyData[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                    Text(
                                        _dummyData[index].time,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.0
                                        )
                                    )
                                ],
                            ),
                            subtitle: Text(
                                _dummyData[index].message,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0
                                )
                            ),
                        ),
                        Divider(height: 10.0),
                    ],
                );
            },
        );
    }
}