import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homepage.dart';

class CoinDetail extends StatelessWidget {
final String asset_id;
final String name;
final double price_usd;
final double volume_1day_usd;
final double volume_1hrs_usd;
final double volume_1mnth_usd;


  const CoinDetail({ Key? key, required this.asset_id, required this.name, required this.price_usd, required this.volume_1day_usd, required this.volume_1hrs_usd, required this.volume_1mnth_usd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        
         Row(
           children:[
             Icon(Icons.arrow_back),
             
              Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
            height:20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            child: Center(child: Text("cX", style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold),)),
                 )
           ],
         ),
        title: Text("cryptoX", style: TextStyle(
          color: Colors.white,fontSize: 15,
        ),),
        backgroundColor: Colors.black,
        elevation: 12,

      ),
      body: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite, 
          
          child: Column(
            children: [
              Center(child: Container( child: Text(this.name),)),
               Container(
                 padding: const EdgeInsets.all(20),
                 width: 200,
                 height: 70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.black,

                 ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Text(this.asset_id + "/USD" ,style: TextStyle( color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                   Text( "\$" + this.price_usd.toString()),
                 ]
               ),
               ),
                Container(
                padding: const EdgeInsets.all(20),
                 width: 200,
                 height: 20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.black,

                 ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Text("Daily Volume Traded: " ,style: TextStyle( color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                   Text( "\$" + this.volume_1day_usd.toString()),
                 ]
               ),
               ),
                Container(
                padding: const EdgeInsets.all(20),
                 width: 200,
                 height: 20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.black,

                 ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Text("Hourly Volume Traded: " ,style: TextStyle( color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                   Text( "\$" + this.volume_1hrs_usd.toString()),
                 ]
               ),
               ),
               Container(
                 padding: const EdgeInsets.all(20),
                 width: 200,
                 height: 20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.black,

                 ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Text("Monthly Volume Traded: " ,style: TextStyle( color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                   Text( "\$" + this.volume_1mnth_usd.toString()),
                 ]
               ),
               ),





               
            ],
          ),
          
          
        ),
      ),
    );
  }
}