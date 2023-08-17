import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import '../../component.dart';

class PrinterSettings extends StatelessWidget {
  const PrinterSettings({Key? key}) : super(key: key);



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
              title: Text('printersettings'.tr),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('connectprinter'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13)),
                  ),
                  RadioListTile<String>(
                    value: 'USB',
                    groupValue: Mycubit.get(context).shebo,
                    onChanged: (value) {
                      Mycubit.get(context).changeshebo(value);
                    },
                    title: Text('USB'),
                  ),
                  RadioListTile<String>(
                    value: 'bluetooth'.tr,
                    groupValue: Mycubit.get(context).shebo,
                    onChanged: (value) {
                      Mycubit.get(context).changeshebo(value);
                    },
                    title: Text('bluetooth'.tr),
                  ),
                  Divider(color: Color(0xff000000)),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                            child:newbutton(
                                'connectprinter'.tr,
                                55,
                                200,
                                25,
                                Color(0xff058060),
                                Color(0xffffffff),
                                    () {},
                                15),),
                      ],
                    ),
                  ),
                  Divider(color: Color(0xff000000)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('widthpaper'.tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13)),
                      ),
                      Container(width: double.infinity,
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xff058060),width: 1)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(25),
                            iconSize: 35,
                            value: Mycubit.get(context).dropd ,
                            onChanged: (value) {
                              Mycubit.get(context).changedropd(value);
                            },
                            items: Mycubit.get(context).zal.map(buildMenuItem).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('printsales'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                    ),
                    Container(width: double.infinity,
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xff058060),width: 1)),
                      child: DropdownButtonHideUnderline(

                        child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(25),
                          iconSize: 35,
                          value: Mycubit.get(context).dropdown,
                          onChanged: (value) {
                            Mycubit.get(context).changedropdown(value);
                          },
                          items: Mycubit.get(context).al.map(buildMenuItem).toList(),
                        ),
                      ),
                    ),
                ],
              ),
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                            child: newbutton(
                                'printertest'.tr,
                                55,
                                200,
                                25,
                                Color(0xff058060),
                                Color(0xffffffff),
                                    () {},
                                15),),
                      ],
                    ),
                  ),
              ]),
            ),
          ));
        },
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item)=> DropdownMenuItem(
    value: item, 
    child: Text(item),
  );
}
