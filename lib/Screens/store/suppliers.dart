import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/store/add%20suppliers.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class suppliers extends StatelessWidget {
  const suppliers({Key? key}) : super(key: key);

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
                title: Text('suppliers'.tr),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('findsuppliers'.tr),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Column(
                            children: [
                              textfie(
                                IC: Color(0xffbcc1c6),
                                FC: Color(0xffffffff),
                                LT: 'suppliers'.tr,
                                HT: 'entersuppliersname'.tr,
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
                                  Expanded(
                                    child: Text(
                                      'suppliers'.tr,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 50 ),
                                      child: Text(
                                          'suppliernumber'.tr,
                                          style: TextStyle(color: Colors.white),
                                        ),
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
                                                addsuppliers()));
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
