import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/store/account%20management.dart';
import 'package:seller/Screens/store/add%20product.dart';
import 'package:seller/Screens/store/buying.dart';
import 'package:seller/Screens/store/coustomers.dart';
import 'package:seller/Screens/store/expenses.dart';
import 'package:seller/Screens/store/inventory.dart';
import 'package:seller/Screens/store/selling.dart';
import 'package:seller/Screens/store/suppliers.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class userscreen extends StatelessWidget {
  const userscreen({Key? key}) : super(key: key);

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
              ),
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('مخزن المنتجات',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => inventorypage()));
                              },
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff058060),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text('شراء',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text('بيع',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                          builder: (context) => buying()));
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => selling()));
                                  },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text('الموردين',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text('العملاء',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => suppliers()));
                                  },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => customers()));
                                  },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text('المصروفات',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 115),
                                child: Text('ادارة الحسابات',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => expenses()));
                                  },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => accountmanagement()));
                                },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
