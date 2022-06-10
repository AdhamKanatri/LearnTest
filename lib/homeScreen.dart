import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id="HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: CustomRow(context, Icons.menu,Icons.shopping_cart),
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              child: SingleChildScrollView(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Row(
                      children: [
                        Text("Iphone"),
                        Icon(Icons.shop,size: 150,),
                      ],
                    )),
                    Icon(Icons.shop,size: 150,),
                    Icon(Icons.shop,size: 150,),
                    Icon(Icons.shop,size: 150,),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget CustomRow(BuildContext context, IconData icon, IconData icon1){
    double width=MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: width*0.7,
            color: Colors.white,
            child: Row(
              children: [
                Icon(Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        Icon(icon1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
