import 'dart:ui';

import 'package:cryptox/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
          height:20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.white,
          ),
          child: Center(child: Text("cX", style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold),)),
        ),
        title: Text("cryptoX", style: TextStyle(
          color: Colors.white,fontSize: 15,
        ),),
        backgroundColor: Colors.black,
        elevation: 12,

      ),
      body:BodyPage(),
      
    );
  }
}