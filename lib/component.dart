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

Widget newbutton(
  @required String? tex,
  @required double? hei,
  @required double? wid,
  @required double? tfont,
  @required Color? bcolor,
  @required Color? tcolor,
  @required VoidCallback? onta,
  @required double? decoration,
) =>
    ElevatedButton(
      onPressed: onta,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(decoration!)),
        minimumSize: Size(wid!, hei!),
        primary: bcolor,
      ),
      child: Text(
        '$tex',
        style: TextStyle(color: tcolor, fontSize: tfont),
      ),
    );

Widget Shops(context, image, name) => InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Shopdesc()));
      },
      child: Container(
          width: 180,
          decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: Image.network('$image')),
              Text('$name')
            ],
          )),
    );

Widget departments(x, s) => Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage('$x'),
        ),
        Text(
          '$s',
          style: TextStyle(fontSize: 20, color: Color(0xFF058060)),
        )
      ],
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

Widget Cotainer(String x) => ClipRRect(
    borderRadius: BorderRadius.circular(25), child: Image.network('$x'));

Widget overview(a, b, c, d) => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              Container(
                color: Color(0xff058060),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(0);
                          },
                          child: Text('$a',
                              style: TextStyle(color: Colors.white))),
                      TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(1);
                          },
                          child: Text('$b',
                              style: TextStyle(color: Colors.white))),
                      TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(2);
                          },
                          child: Text('$c',
                              style: TextStyle(color: Colors.white))),
                      TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(3);
                          },
                          child: Text('$d',
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                ),
              ),
              Container(
                child: Mycubit.get(context).accmanage[Mycubit.get(context).a!],
              ),
            ],
          );
        },
      ),
    );
Widget sell() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );
Widget salary() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );
Widget prosell() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );
Widget prosala() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );

Widget aggregatedata(x, y) => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xff058060),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(0);
                          },
                          child: Text('$y',
                              style: TextStyle(color: Colors.white))),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Mycubit.get(context).changea(1);
                          },
                          child: Text('$x',
                              style: TextStyle(color: Colors.white))),
                    ),
                  ],
                ),
              ),
              Container(
                child: Mycubit.get(context).accmanage[Mycubit.get(context).a!],
              ),
            ],
          );
        },
      ),
    );
Widget sales() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );
Widget purchases() => Container(
      color: Color(0xb08ea39c),
      child: Text('data'),
    );

Widget descrep() => Container(
      child: Text(
        'We are always working to serve our customers with distinction and care. All we care about is the customer\'s comfort, because it is good to serve you, and we are working to make you happy.',
        style: TextStyle(fontSize: 20),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
Widget productlist() => Container(
      width: 150,
      height: 180,
      child: Column(
        children: [
          Image.network('https://clipground.com/images/dairy-png-6.jpg'),
          Text('Name of product'),
          Text('price 30\$'),
        ],
      ),
    );

Widget productliste() => ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (Context, index) => productlist(),
    separatorBuilder: (context, index) => SizedBox(width: 20),
    itemCount: 10);
