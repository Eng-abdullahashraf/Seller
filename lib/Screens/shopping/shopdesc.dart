import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class Shopdesc extends StatelessWidget {
  const Shopdesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(children: [
                    Container(
                      height: 320,
                      decoration: BoxDecoration(
                          color: Color(0xFF058060),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(70),
                              bottomLeft: Radius.circular(70))),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          child: Icon(Icons.arrow_back),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image(image: AssetImage('images/im.jpg')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'Name',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ]),

                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
