import 'package:cryptox/apifolder/getx_controller.dart';
import 'package:cryptox/models/coindata_model.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';



final String  base_Url ='https://rest.coinapi.io/v1/assets';
final String news_api_key = "a8b785dbc8ed44cab286cbb9e5f92e78";
  // Base headers for Response url
 var  header = 
    {'X-CoinAPI-Key' : 'C9CF27DE-DB71-4701-8F81-A391EE152EB3',
    "Accept": "application/json",
    "Access-Control_Allow_Origin": "*"
    };
  

  CoinController _coinController = Get.find();
   
  int count =0;

fetchCoin() async {
    Uri uri = Uri.parse(base_Url);
    final res = await http.get(uri,  headers : header);
    if (res.statusCode == 200) {
      print("Success");
      var response = json.decode(res.body);
         for(var coindata in response){
             if(coindata["type_is_crypto"]==1){
               if(count < 50) {
                 CoinAlbum coinmodel = new CoinAlbum(name: coindata["name"]??"Empty", asset_id: coindata["asset_id"]??"EMP",
                  price_usd: coindata["price_usd"] ??  0, volume_1day_usd: coindata["volume_1day_usd"]?? 0, volume_1hrs_usd: coindata["volume_1hrs_usd"] ?? 0, volume_1mnth_usd: coindata["volume_1mnth_usd"] ?? 0);
                 _coinController.coinList.add(coinmodel);
                 count++ ;
               } 
             }   
         }
      print(_coinController.coinList.length);
      _coinController.isLoadiing.value = false;     
    }   
    else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load data: ${res
                .statusCode} ');
    }
  }

void setState(Null Function() param0) {
}
