import 'package:flutter/material.dart';
import 'package:new_task/HomePage.dart';
import 'package:new_task/MyProvider.dart';
import 'package:new_task/cart.dart';
import 'package:new_task/categories.dart';
import 'package:new_task/category_1.dart';
import 'package:new_task/category_2.dart';
import 'package:new_task/category_3.dart';
import 'package:new_task/details.dart';
import 'package:new_task/favorite.dart';
import 'package:new_task/log_in.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override


  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (__)=>MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: login(),
        routes: {
          '/log_in':(context)=>login(),
          '/categories':(context)=>categories(),
          '/category_1':(context)=>category_1(),
          '/category_2':(context)=>category_2(),
          '/category_3':(context)=>category_3(),
          '/HomePage':(context)=>HomePage(),
          '/details':(context)=>details(),
          '/cart':(context)=>cartPage(),
          '/favorite':(context)=>favorite(),
        },
      ),
    );

  }
}
