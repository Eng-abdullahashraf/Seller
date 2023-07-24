import 'package:flutter/material.dart';
import 'package:seller/Screens/store/add%20suppliers.dart';
import 'package:seller/component.dart';
class suppliers extends StatelessWidget {
  const suppliers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff567600),
          title: Text('الموردين'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ابحث عن مورد'),
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
                          LT: 'الموردين',
                          HT: 'ادخل اسم المورد',
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
                        color: Color(0xff567600),),
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
                                'المورد',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text(
                                'رقم المورد',
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
                          child: FloatingActionButton(backgroundColor:  Color(0xff567600),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>addsuppliers()));
                            },
                            child: Icon(Icons.add),
                          ),
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );;
  }
}
