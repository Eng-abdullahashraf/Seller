import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import '../../component.dart';

class addproduct extends StatelessWidget {
  const addproduct({Key? key}) : super(key: key);

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
              title: Text(
                'منتج جديد',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('اسم المنتج',
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
                          hintText: 'ادخل اسم المنتج',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('الباركود',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff058060),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('اضف الباركود',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('الكميه',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'الكميه',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text('سعر الشراء',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 130),
                          child: Text('سعر البيع',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "سعر الشراء",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "سعر البيع",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('الوصف',
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
                          hintText: 'الوصف',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('التصنيف',
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
                          hintText: 'التصنيف',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff058060),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('حفظ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ])),
            ),
          ));
        },
      ),
    );
  }
}
