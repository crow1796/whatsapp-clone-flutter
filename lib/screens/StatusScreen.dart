import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget{
    @override
    State<StatefulWidget> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>{

    @override
    Widget build(BuildContext context){
        return Center(child: Text("Status"));
    }
}