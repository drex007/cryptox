// ignore_for_file: prefer_const_constructors

import 'package:cryptox/apifolder/getx_controller.dart';
import 'package:cryptox/coindetail.dart';
import 'package:cryptox/models/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabControl extends StatefulWidget {

CoinController _coinControl = Get.put(CoinController());

  TabControl({ Key? key }) : super(key: key);


  @override
  _TabControlState createState() => _TabControlState();
}

class _TabControlState extends State<TabControl> with TickerProviderStateMixin {
  var mycolor = 0;

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
     CoinController _coinControl = Get.find();
     
    
    
 
      
 

    return Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          //TabBar Container 
          Container(
            
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: TabBar(

                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:mycolor != 0?Colors.red:Colors.greenAccent,

                ),
                indicatorColor: Colors.yellow,
                indicatorWeight: 4,
                controller: _tabcontroller,
                
               
                tabs: 
              [
                Text("50 coin prices", style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("Coin news", style: TextStyle(fontSize: 20, color: Colors.black),),
              ]),
            ),
          ),
          //Tapbar content 
          Container(
          height: 350,
        width: double.maxFinite,
        child: TabBarView(
          controller: _tabcontroller,
          children: [
            
           Obx(()=>
              ListView.builder(
               scrollDirection: Axis.vertical,
               itemCount: _coinControl.coinList.length,
               itemBuilder :(BuildContext context , int index){
                return  GestureDetector(
                  onTap: (){
                      Get.to(()=> MyCoin(asset_id: _coinControl.coinList[index].asset_id, name: _coinControl.coinList[index].name,
                       price_usd:_coinControl.coinList[index].price_usd, volume_1day_usd:_coinControl.coinList[index].volume_1day_usd,
                         volume_1hrs_usd: _coinControl.coinList[index].volume_1hrs_usd, volume_1mnth_usd: _coinControl.coinList[index].volume_1mnth_usd,));
                  },
                
                  child: Container(
                    
                    
                    margin: const EdgeInsets.only(top: 10, right: 10,left: 10),
                   width: double.maxFinite,
                   height:70,
                   decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                           
                   ),
                    child: Container(
                     margin: const EdgeInsets.only(left: 10, right: 10),
                     child: GestureDetector(
                      
                      onTap: (){
                       
                        Get.to(()=> MyCoin( asset_id: _coinControl.coinList[index].asset_id,
                         name: _coinControl.coinList[index].name,
                       price_usd:_coinControl.coinList[index].price_usd, volume_1day_usd:_coinControl.coinList[index].volume_1day_usd,
                         volume_1hrs_usd: _coinControl.coinList[index].volume_1hrs_usd, volume_1mnth_usd: _coinControl.coinList[index].volume_1mnth_usd
 
                        ));
                      },
                       child: Row(
                        
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Text(_coinControl.coinList[index].asset_id + "/USD", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                         Text(_coinControl.coinList[index].price_usd > 1000 ?"\$"+_coinControl.coinList[index].price_usd.toStringAsPrecision(5): "\$"+_coinControl.coinList[index].price_usd.toStringAsPrecision(4), style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold))
                       ],),
                     ),
                   ),
                           ),
                );
                 
               },
              ),
           ),
          ListView.builder(
             scrollDirection: Axis.vertical,
             itemCount: 15,
             itemBuilder :(BuildContext context , int index){
              return  Container(
              
                margin: const EdgeInsets.only(top: 10, right: 10,left: 10),
               width: double.maxFinite,
               height:70,
               decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)

               ),
               child: Container(
                 margin: const EdgeInsets.only(left: 10, right: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text("ETH/USD", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                   Text("\$340", style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold))
                 ],),
               ),
                       );
      
             },
            ),

        ]),
      ),
          

        ],
      ),
      
    );
  }
}