import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
    
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "WhatsApp Clone",
            theme: ThemeData(
                primaryColor: Color(0xff075e54),
                accentColor: Color(0xff25d366)
            ),
            home: HomeScreen()
        );
    }
}