import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
import 'screens/CameraScreen.dart';
    
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: "WhatsApp Clone",
            theme: ThemeData(
                primaryColor: Color(0xff075e54),
                accentColor: Color(0xff25d366)
            ),
            home: HomeScreen(),
            routes: {
                "/CameraScreen": (BuildContext context) => CameraScreen()
            }
        );
    }
}