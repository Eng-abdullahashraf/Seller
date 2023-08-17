import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import '../../component.dart';

class Treasury extends StatelessWidget {
  const Treasury({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _RadioSelectedString = 'addmoney'.tr;

    return BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff058060),
              title: Text(
                'treasury'.tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'trasurybalance'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: Color(0xff058060),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'currentbal'.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                      height: 40,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Color(0xff058060))),
                      child: Center(child: Text('0.0')),
                    ),
                  ),
                  RadioListTile<String>(
                    value: 'addmoney'.tr,
                    groupValue: Mycubit.get(context).shebo,
                    onChanged: (value) {
                      Mycubit.get(context).changeshebo(value);
                    },
                    title: Text('addmoney'.tr),
                  ),
                  RadioListTile<String>(
                    value: 'deductmoney'.tr,
                    groupValue: Mycubit.get(context).shebo,
                    onChanged: (value) {
                      Mycubit.get(context).changeshebo(value);
                    },
                    title: Text('deductmoney'.tr),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('amount'.tr,
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
                        hintText: 'enteramount'.tr,
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
                    padding: const EdgeInsets.all(5.0),
                    child: Text('exchangedate'.tr,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  InkWell(
                    onTap: () async {
                      DateTime? newdatetime = await showDatePicker(
                          context: context,
                          initialDate: Mycubit.get(context).dateTime,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      Mycubit.get(context).changedate(newdatetime);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2.0,
                                  offset: Offset(0.0, 4.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 2.0)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${Mycubit.get(context).dateTime.year} / ${Mycubit.get(context).dateTime.month} / ${Mycubit.get(context).dateTime.day}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                            child: Buttonfi(
                                'save'.tr ,
                                50,
                                double.infinity,
                                20,
                                Color(0xff058060),
                                Color(0xffffffff),
                                    () {},
                                20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
