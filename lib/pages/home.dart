import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend_admin_bar/pages/notify.dart';

import 'package:frontend_admin_bar/model/item.dart';

import 'package:flutter/services.dart' show rootBundle;




class home extends StatelessWidget {
  home({Key? key}) : super(key: key);
  
   
    String jsonString = '[{"id": 1, "name": "Elemento 1"}, {"id": 2, "name": "Elemento 2"}, {"id": 3, "name": "Elemento 3"}]';
    

  @override
  Widget build(BuildContext context) {
    List<dynamic> jsonList = json.decode(jsonString);

    var items = jsonList.map((json) => Item.fromJson(json)).toList();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 127, 129, 129),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 48, 45, 44),
        title: Text('La mia lista'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notify()),
              );
            },
            child: ListTile(
              title: Text(items[index].name),
              subtitle: Text('Questo è un elemento della lista'),
              leading: Icon(Icons.star),
            ),
          );
        },
      ),
    );
  }
}