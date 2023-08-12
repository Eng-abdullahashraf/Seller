import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import '../../component.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var username=TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
            backgroundColor: Color(0xffdff2ea),
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, right: 15, left: 15),
                      child: Image(
                        image: AssetImage('images/seller.png'),
                        width: 120,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 5),
                      child: Text('welcometo'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                      child: Text('createacc'.tr,
                          style: TextStyle(
                               fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xffdff2ea),
                          PrefI: Icon(Icons.supervised_user_circle),
                          LT: 'username'.tr,
                          HT: 'username'.tr,
                          Scure: false,
                          rad: 25,
                          controller: username),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xffdff2ea),
                          PrefI: Icon(Icons.supervised_user_circle),
                          LT: 'mail'.tr,
                          HT: 'acc@comp.com',
                          Scure: false,
                          rad: 25,
                          controller: username),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xffdff2ea),
                          PrefI: Icon(Icons.supervised_user_circle),
                          LT: 'pass'.tr,
                          HT: 'pass'.tr,
                          Scure: true,
                          rad: 25,
                          controller: username),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xffdff2ea),
                          PrefI: Icon(Icons.supervised_user_circle),
                          LT: 'cpass'.tr,
                          HT: 'cpass'.tr,
                          Scure: true,
                          rad: 25,
                          controller: username),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      child: newbutton('sign'.tr, 55, 250, 20, Color(0xFF058060),
                          Color(0xffffffff), () {

                          }, 30),
                    ),

                  ]),
            ),
          ));
        },
      ),
    );
  }
}
