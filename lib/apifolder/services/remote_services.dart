import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cryptox/apifolder/getx_controller.dart';
import 'package:cryptox/models/coindata_model.dart';
import 'package:get/get.dart';

// class RemoteServices {

  
// final String  base_Url ='https://rest.coinapi.io/v1/assets';
// final String news_api_key = "a8b785dbc8ed44cab286cbb9e5f92e78";
//   // Base headers for Response url

//   CoinController _coinController = Get.find();
   
//   int count =0;

// fetchCoin() async {
//     Uri uri = Uri.parse(base_Url);
//     final res = await http.get(uri,  headers : {'X-CoinAPI-Key' : 'D1461109-7C70-4CF2-A307-7E3FE08DFA84',
//     "Accept": "application/json",
//     "Access-Control_Allow_Origin": "*"
//     });
//     if (res.statusCode == 200) {
//       print("Success");
//       var response = json.decode(res.body);
//          for(var coindata in response){
//              if(coindata["type_is_crypto"]==1){
//                if(count < 30) {
//                  CoinAlbum coinmodel = new CoinAlbum(name: coindata["name"]??"Empty", asset_id: coindata["asset_id"]??"EMP",
//                   price_usd: coindata["price_usd"] ??  0);
//                  _coinController.coinList.add(coinmodel);
//                  count++;
//                } 
//              }   
//          }
         
//       setState(){};
//       _coinController.coinList.forEach((singledata){
//         if(singledata.price_usd > 1000){
//           print("\$"+"${singledata.price_usd.toStringAsPrecision(5)}");
//         } else {
//           print("\$"+"${singledata.price_usd.toStringAsPrecision(4)}");
//         } 
//       });
// ;
//     }   
//     else {
//       // If that response was not OK, throw an error.
//       throw Exception('Failed to load data: ${res
//                 .statusCode} ');
//     }
//   }
// }