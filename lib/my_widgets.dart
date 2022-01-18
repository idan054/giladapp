import 'package:flutter/material.dart';

Widget myCard({cardColor, required koteret}){
  return  Card(
    color: cardColor,
    child: ListTile(
      leading: FlutterLogo(),
      // title: Text('One-line with both widgets'),
      title: Text(koteret),
      // title: koteret,
      trailing: Icon(Icons.more_vert),

    ),
  );
}