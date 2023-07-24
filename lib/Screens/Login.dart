import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/userscreen.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mailadd = TextEditingController();
    var password = TextEditingController();

    return SafeArea(
      child: BlocProvider(
        create: (BuildContext context) => Mycubit(),
        child: BlocConsumer<Mycubit, Sellerstates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Color(0xFF058060),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFF058060),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'welcome'.tr,
                              style: TextStyle(
                                  color: Color(0xffDFF2EA),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'fruitful'.tr,
                              style: TextStyle(
                                  color: Color(0xffDFF2EA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'logi'.tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xFF058060),
                          PrefI: Icon(Icons.email),
                          LT: 'mail'.tr,
                          HT: 'acc@comp.com',
                          Scure: false,
                          rad: 25,
                          controller: mailadd),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textfie(
                          IC: Color(0xff000000),
                          FC: Color(0xFF058060),
                          PrefI: Icon(Icons.password_outlined),
                          LT: 'pass'.tr,
                          HT: 'pass'.tr,
                          Scure: true,
                          rad: 25,
                          controller: password),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 3, right: 8, left: 8, bottom: 3),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'forget'.tr,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Buttonfi('logi'.tr, 55, 250, 20, Color(0xFF058060),
                          Color(0xffffffff), () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userscreen()));
                      }, 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('dont'.tr,),
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'signup'.tr,

                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
