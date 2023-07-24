import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:seller/Screens/shopping/shopdesc.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

Widget textfie(
    {@required Color? IC,
    @required Color? FC,
    @required Widget? PrefI,
    @required String? LT,
    @required String? HT,
    required bool Scure,
    @required double? rad,
    @required TextEditingController? controller}) {
  return Container(
    child: TextField(
        decoration: InputDecoration(
            prefixIconColor: IC,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(rad!)),
            filled: true,
            fillColor: FC,
            prefixIcon: PrefI,
            labelText: LT,
            hintText: HT),
        obscureText: Scure,
        controller: controller),
  );
}

Widget Buttonfi(
  @required String? tex,
  @required double? hei,
  @required double? wid,
  @required double? tfont,
  @required Color? bcolor,
  @required Color? tcolor,
  @required VoidCallback? onta,
  @required double? decoration,
) =>
    GestureDetector(
      onTap: onta,
      child: Container(
        decoration: BoxDecoration(
            color: bcolor!,
            borderRadius: BorderRadius.circular(decoration!),
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
        height: hei,
        alignment: Alignment.center,
        width: wid,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            tex!,
            style: TextStyle(
                color: tcolor, fontSize: tfont, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

Widget Shops( context) => InkWell(
  onTap: () {

    Navigator.push(context, MaterialPageRoute(builder: (context)=>Shopdesc()));
  },
  child:   Container(

        width: 180,

        decoration: BoxDecoration(

            color: Color(0xb08ea39c), borderRadius: BorderRadius.circular(25)),

        child: Center(child: Text('data')),

      ),
);

Widget departments() => Container(
        child: CircleAvatar(
      radius: 70, // set the radius of the circle
    )
);

Widget radiocontainer() => BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 110,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff010155)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          onTap: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage: translator.currentLanguage == 'ar'
                                  ? 'en'
                                  : 'ar',
                              remember: true,
                              restart: true,
                            );
                          },
                          child: Text(
                            'English',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff010155)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          onTap: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage: translator.currentLanguage == 'ar'
                                  ? 'en'
                                  : 'ar',
                              remember: true,
                              restart: true,
                            );
                          },
                          child: Text(
                            'اللغة العربية',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

Widget productstors() => BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: ((context, state) {}),
        builder: ((context, state) {
          return Container(
            decoration: BoxDecoration(color: Colors.grey),
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      'السعر',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        'الكميه',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'المنتج',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );

Widget usercontainer(
  @required double? containerheight,
  @required String? imagepath,
  @required String? text,
  @required double fsize,
) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(children: [
          Image(
            image: AssetImage(imagepath!),
          ),
          Text(text!,
              style: TextStyle(
                fontSize: fsize,
              )),
        ]),
      ),
    );

Widget Cotainer() => Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xb08ea39c), borderRadius: BorderRadius.circular(25)),
      child: Center(child: Text('data')),
    );
