import 'package:flutter/material.dart';

import '../component.dart';
class inventorypage extends StatelessWidget {
  const inventorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('products store'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text('Find a product'),
                  SizedBox(height: 15,),
                  Container(child:
                    Column(children: [
                      textfie(
                          IC: Color(0xffbcc1c6),
                          FC: Color(0xffffffff),
                          PrefI: Icon(Icons.add_shopping_cart),
                          LT: 'Inventory',
                          HT: 'Find a product',
                          Scure: false,
                          rad: 25,
                          ),
                    ],),),
          ]),
        ),
      ),
    );
  }
}
