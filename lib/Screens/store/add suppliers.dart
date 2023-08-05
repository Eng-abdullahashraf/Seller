import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class addsuppliers extends StatelessWidget {
  const addsuppliers({Key? key}) : super(key: key);

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
              title: Text('newsuppliers'.tr, style: TextStyle(color: Colors.white)),
            ),
            body: SingleChildScrollView(
                child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('suppliersname'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'entersuppliersname'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('address'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'entersuppliersaddress'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('phonenum'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'enterphone'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('notes'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'addnotes'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(
                              child: Buttonfi(
                                  'save'.tr,
                                  50,
                                  80,
                                  20,
                                  Color(0xff058060),
                                  Color(0xffffffff),
                                  () {},
                                  20)),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Buttonfi(
                                  'clean'.tr,
                                  50,
                                  80,
                                  20,
                                  Color(0xff058060),
                                  Color(0xffffffff),
                                  () {},
                                  20))
                        ],
                      ),
                    )
                  ]),
            )),
          ));
        },
      ),
    );
  }
}
