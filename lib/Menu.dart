import 'package:flutter/material.dart';
import 'customIcons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Menu extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ted Le"),
            currentAccountPicture: CircleAvatar(),

          ),
          ListTile(
            title: Text('Competitions'),
            trailing: Icon(
              FontAwesomeIcons.gamepad
            ),
            onTap: () {
              // Update the state of the app
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Lesson'),
            trailing: Icon(
              FontAwesomeIcons.stickyNote
            ),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          ListTile(
            title: Text('Shop'),
            trailing: Icon(
              FontAwesomeIcons.shoppingCart
            ),
            onTap: () {
              // Update the state of the app
              Navigator.pushNamed(context, '/shop');
            },
          ),
        ],
      ),
    );
  }
}