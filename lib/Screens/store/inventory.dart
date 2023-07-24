

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seller/Screens/store/add%20product.dart';

import '../../component.dart';

class inventorypage extends StatelessWidget {
  const inventorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff058060),
          title: Text('متجر المنتجات'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ابحث عن منتج'),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        textfie(
                          IC: Color(0xffbcc1c6),
                          FC: Color(0xffffffff),
                          PrefI: Icon(Icons.add_shopping_cart),
                          LT: 'المنتجات',
                          HT: 'ابحث عن منتج',
                          Scure: false,
                          rad: 25,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        color: Color(0xff058060),),
                      height: 40,
                      width: double.infinity,
                      child:  Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Text(
                                'السعر',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Text(
                                  'الكميه',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'المنتج',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(backgroundColor:  Color(0xff058060),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>addproduct()));
                            },
                            child: Icon(Icons.add),
                          ),
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
