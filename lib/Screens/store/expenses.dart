import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

class expenses extends StatelessWidget {
  const expenses({Key? key}) : super(key: key);

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
                'المصروفات',
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
                      child: Text('جهة الصرف',
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
                          hintText: 'ادخل جهة الصرف',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('المبلغ المصروف',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'ادخل المبلغ المصروف',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('تاريخ الصرف',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? newdatetime = await showDatePicker(
                            context: context,
                            initialDate: Mycubit.get(context).dateTime,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        Mycubit.get(context).changedate(newdatetime);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffffffff)!,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2.0,
                                    offset: Offset(0.0, 4.0)),
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 7.0,
                                    offset: Offset(0.0, 2.0)),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${Mycubit.get(context).dateTime.year} / ${Mycubit.get(context).dateTime.month} / ${Mycubit.get(context).dateTime.day}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(
                              child: Buttonfi(
                                  'حفظ',
                                  50,
                                  double.infinity,
                                  20,
                                  Color(0xff058060),
                                  Color(0xffffffff),
                                  () {},
                                  20)),
                        ],
                      ),
                    )
                  ]),
            )),
          ));
        },
      ),
    );
  }
}
