import 'package:flutter/material.dart';

import '../../component.dart';

class addproduct extends StatelessWidget {
  const addproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'منتج جديد',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('اسم المنتج',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            textfie(
                              IC: Color(0xffbcc1c6),
                              FC: Color(0xffffffff),
                              HT: 'ادخل اسم المنتج',
                              Scure: false,
                              rad: 25,
                            ),
                          ],
                        ),
                      ),
                      Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                SizedBox(child: Text('الباركود',style: TextStyle(fontWeight: FontWeight.bold))),
                                Container(
                                  child: Column(
                                    children: [
                                      textfie(
                                        IC: Color(0xffbcc1c6),
                                        FC: Color(0xffffffff),
                                        HT: 'اضف الباركود',
                                        Scure: false,
                                        rad: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ])),

                          Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(child: Text('الكميه',style: TextStyle(fontWeight: FontWeight.bold),)),
                                      Container(
                                        child: Column(
                                          children: [
                                            textfie(
                                              IC: Color(0xffbcc1c6),
                                              FC: Color(0xffffffff),
                                              HT: 'الكميه',
                                              Scure: false,
                                              rad: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])
                            ),

                          Expanded(
                            child: Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(child: Text('سعر الشراء',style: TextStyle(fontWeight: FontWeight.bold),)),
                                      Container(
                                        child: Column(
                                          children: [
                                            textfie(
                                              IC: Color(0xffbcc1c6),
                                              FC: Color(0xffffffff),
                                              HT: 'سعر الشراء',
                                              Scure: false,
                                              rad: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])
                            ),
                          ),
                    ])
                ),
            )
        )
    );
  }
}
