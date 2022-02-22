import 'package:flutter/material.dart';

class MyCoin extends StatelessWidget {
final String asset_id;
final String name;
final double price_usd;
final double volume_1day_usd;
final double volume_1hrs_usd;
final double volume_1mnth_usd;


  const MyCoin({ Key? key, required this.asset_id, required this.name, required this.price_usd, required this.volume_1day_usd, required this.volume_1hrs_usd, required this.volume_1mnth_usd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.grey,
        child: Column(
          children: [
          Container(
              height: 70,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(child: Text("Coin Name:" + this.name, style: TextStyle(color: Colors.yellow),)),
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${this.asset_id}/USD", style: TextStyle(color: Colors.yellow),),
                  Text("\$" + "${this.price_usd}", style: TextStyle(color: Colors.green),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hourly Volume traded", style: TextStyle(color: Colors.yellow),),
                  Text("${this.volume_1hrs_usd}", style: TextStyle(color: Colors.green),)
                ],
              ),
            ),
           SizedBox(height: 10,),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Daily Volume traded", style: TextStyle(color: Colors.yellow),),
                  Text("${this.volume_1hrs_usd}", style: TextStyle(color: Colors.green),)
                ],
              ),
            )

          
          ],
        ),

      ),
    );
  }
}