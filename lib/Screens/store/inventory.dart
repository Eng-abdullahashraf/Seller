import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/store/add%20product.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import '../../component.dart';

class inventorypage extends StatelessWidget {
  const inventorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff058060),
                title: Text('productstore'.tr),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('findproduct'.tr),
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
                                LT: 'products'.tr,
                                HT: 'findproduct'.tr,
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
                              color: Color(0xff058060),
                            ),
                            height: 40,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Text(
                                      'price'.tr,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 30),
                                      child: Text(
                                        'quantity'.tr,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'products '.tr,
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
                                child: FloatingActionButton(
                                  backgroundColor: Color(0xff058060),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                addproduct()));
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
        },
      ),
    );
  }
}
