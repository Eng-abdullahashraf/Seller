import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class Shoppingscreen extends StatelessWidget {
  const Shoppingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var search = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Color(0xffDFF2EA),
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(children: [
                    textfie(
                        IC: Color(0xff000000),
                        FC: Color(0xffA2D4BF),
                        PrefI: Icon(Icons.search),
                        LT: 'Search',
                        HT: 'Search',
                        Scure: false,
                        rad: 8,
                        controller: search),
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
