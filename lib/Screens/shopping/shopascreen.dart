import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
              backgroundColor: Colors.seconedcolo,
              body: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 340,
                    child: Stack(children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.appcolo,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80),
                                bottomLeft: Radius.circular(80))),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: textfie(
                                IC: Color(0xff000000),
                                FC: Colors.seconedcolo,
                                PrefI: Icon(Icons.search),
                                LT: 'Search',
                                HT: 'Search',
                                Scure: false,
                                rad: 20,
                                controller: search),
                          ),
                          Text('LOCATION',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffdff2ea))),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 200,
                              child: CarouselSlider(
                                items: Mycubit.get(context).gene(),
                                options: CarouselOptions(
                                  height: 200,
                                  enlargeCenterPage: true,
                                  initialPage: 0,
                                  autoPlayInterval: Duration(seconds: 5),
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: true,
                                  reverse: true,
                                  viewportFraction: 1.0,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  autoPlayAnimationDuration: Duration(seconds: 5),
                                  enableInfiniteScroll: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Divider(color: Colors.grey,thickness: 2,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text(

                          'shops'.tr,
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 150,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Shops(context),
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          itemCount: 10),
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 2,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text(

                          'depart'.tr,
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 150,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => departments(),
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          itemCount: 3),
                    ),
                  ),


                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
