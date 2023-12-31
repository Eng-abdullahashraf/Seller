import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/loginpage/Login.dart';
import 'package:seller/Screens/shopping/shopascreen.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class Firstscree extends StatelessWidget {
  const Firstscree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (BuildContext context) => Mycubit(),
        child: BlocConsumer<Mycubit, Sellerstates>(
          listener: (context, state) {},
          builder: (context, state) {
            return BlocProvider(
              create: (BuildContext Context) => Mycubit(),
              child: BlocConsumer<Mycubit, Sellerstates>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Scaffold(
                    body: Container(
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/back.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x889EB89C)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Icon(
                                          Icons.language,
                                          color: Color(0xFF058060),
                                          size: 40,
                                        ),
                                        onTap: () {
                                          Mycubit.get(context).translateor(context);
                                        },
                                      ),
                                      Expanded(child: SizedBox()),
                                      GestureDetector(
                                        child: Icon(
                                          Icons.login_outlined,
                                          color: Color(0xFF058060),
                                          size: 40,
                                        ),
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                        },
                                      ),

                                    ],
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(bottom: 35),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Center(
                                            child: Image(
                                                image: AssetImage(
                                                    'images/seller.png'))),
                                        SizedBox(
                                          height: 50,
                                        ),

                                        newbutton(
                                            'shopping'.tr,
                                            55,
                                            200,
                                            25,
                                            Color(0xffdff2ea),
                                            Color(0xff000000),
                                            () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => Shoppingscreen(),));
                                            },
                                            15),
                                      ],
                                    ),
                                  )),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
