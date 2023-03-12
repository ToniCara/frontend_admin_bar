// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style License that can be
// found in the LICENSE file.

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend_admin_bar/pages/add_money.dart';
import 'package:frontend_admin_bar/pages/home.dart';
import 'package:frontend_admin_bar/pages/profile.dart';
import 'package:frontend_admin_bar/pages/notify.dart';
import 'package:frontend_admin_bar/pages/add_product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  int _selectedIndex = 0;

  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    home(),
    add_product(),
    add_money(),
    notify(),
    profile(),
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });


}
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 48, 48),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 48, 48),
          title: Text('ADMIN APP'),
        ),

        body: Center(
          
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

        //bottom bar con pulsanti
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 44, 48, 48),
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {_onItemTapped(0);},
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {_onItemTapped(1);},
              ),
              IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {_onItemTapped(2);},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {_onItemTapped(3);},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {_onItemTapped(4);},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
