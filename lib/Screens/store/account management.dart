import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class accountmanagement extends StatelessWidget {
  const accountmanagement({Key? key}) : super(key: key);

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
              title:
                  Text('accoutmanagement'.tr, style: TextStyle(color: Colors.white)),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xff058060)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    Mycubit.get(context).changev(0);
                                  },
                                  child: Text('overview'.tr,
                                      style: TextStyle(color: Colors.white))),
                            ),
                             Expanded(
                               child: TextButton(
                                      onPressed: () {
                                        Mycubit.get(context).changev(1);
                                      },
                                      child: Text('aggregatedata'.tr,
                                          style:
                                              TextStyle(color: Colors.white))),
                             ),
                          ],
                        )),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Mycubit.get(context).c[Mycubit.get(context).v!],
                    ),
                  ]),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
