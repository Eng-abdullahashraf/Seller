import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mail = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF058060),
            ),
            body: Column(
              children: [
                Text('searchacc'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: textfie(
                      IC: Color(0xff000000),
                      FC: Color(0xffffffff),
                      PrefI: Icon(Icons.email),
                      LT: 'mail'.tr,
                      HT: 'acc@comp.com',
                      Scure: false,
                      rad: 25,
                      controller: mail),
                ),
                SizedBox(height: 10,),

                newbutton('find'.tr, 55, 250, 20, Color(0xFF058060),
                    Color(0xffffffff), () {}, 30),
              ],
            ),
          ));
        },
      ),
    );
  }
}
