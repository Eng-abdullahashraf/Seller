import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
                backgroundColor: Color(0xff010155),
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      usercontainer(300, 'images/im.jpg', 'Inventory'.tr, 20),
                      Row(
                        children: [
                          Expanded(child: usercontainer(300, 'images/im.jpg', 'sale'.tr, 20)),
                          Expanded(child: usercontainer(150, 'images/im.jpg', 'purchases'.tr, 20)),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: usercontainer(300, 'images/im.jpg', 'suppliers'.tr, 20)),
                          Expanded(child: usercontainer(150, 'images/im.jpg', 'customer'.tr, 20)),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: usercontainer(300, 'images/im.jpg', 'expenses'.tr, 20)),
                          Expanded(child: usercontainer(150, 'images/im.jpg', 'account'.tr, 20)),
                        ],
                      ),


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
