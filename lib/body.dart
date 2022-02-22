// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:cryptox/apifolder/getx_controller.dart';
import 'package:cryptox/tab_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'apifolder/fetchdata.dart';
import 'coindetail.dart';

// class CoinAlbum {
//   final String name;
//   final String asset_id;
//   final String price_usd;
//   final int volume_1hrs_usd;
//   final int volume_1day_usd;
//   final int  volume_1mnth_usd;


//   const CoinAlbum({
//     required this.name,
//     required this.asset_id,
//     required this.price_usd,
//     required this.volume_1hrs_usd,
//     required this.volume_1day_usd,
//     required this.volume_1mnth_usd,
//   });

//   factory CoinAlbum.fromJson(Map<String, dynamic> json) {
//     return CoinAlbum(
//       name: json['name'],
//       asset_id: json['asset_id'],
//       price_usd: json['price_usd'],
//       volume_1hrs_usd: json['volume_1hrs_usd'],
//       volume_1day_usd: json['volume_1day_usd'],
//       volume_1mnth_usd: json['volume_1mnth_usd'],
//     );
//   }
// }

class BodyPage extends StatefulWidget {

  
  BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  
  @override
  void initState() {
      fetchCoin();
    super.initState();
    setState(() {
      
    });
   
  }
  

  Widget build(BuildContext context) {
  
   CoinController _coinControl = Get.put(CoinController());
 
   
    return Obx(() {
      if(_coinControl.isLoadiing.value){
        return Center(child: CircularProgressIndicator());
    } else {
       return    Container(
        
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          children: [
            


            SizedBox(height: 10,),
            //BtC section 
            Container(
              height: 120,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
                
              ),
              child: Column(
                children: [
                  
                     Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                           margin: const EdgeInsets.only(left:15, top:10),
                           child: Text(_coinControl.coinList[0].asset_id + "/USD", style: TextStyle(
                            color: Colors.yellow, fontSize:20, fontWeight: FontWeight.bold,
                        )
                        ),
                         ),
                        Container(
                         
                           margin: const EdgeInsets.only(right:15, top:15),
                          child: Text("\$" + ""+_coinControl.coinList[0].price_usd.toStringAsPrecision(5), style: TextStyle(
                            color: Colors.white, fontSize:20, fontWeight: FontWeight.bold,
                          )
                          ),
                        ),
                      
                      ],
                    ),
                  
                  //More Details button  container 
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>MyCoin(asset_id: _coinControl.coinList[0].asset_id, name: _coinControl.coinList[0].name,
                       price_usd:_coinControl.coinList[0].price_usd, volume_1day_usd:_coinControl.coinList[0].volume_1day_usd,
                         volume_1hrs_usd: _coinControl.coinList[0].volume_1hrs_usd, volume_1mnth_usd: _coinControl.coinList[0].volume_1mnth_usd,)); 
                    },
                    child: Container(
                      height:50,
                      width:250,
                      margin: const EdgeInsets.only(top:15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellow.withOpacity(0.8),
                      ),
                      child: Center(child: Text("More Details", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold))),
                      
                    ),
                  ),
                  
               
               
                ],
              ),
            ),
            TabControl(),
          ],
        ),
      );
  
    }
      
     } );
  }
}

