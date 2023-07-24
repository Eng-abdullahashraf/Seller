
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/Login.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';
class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: BlocProvider(
        create: (BuildContext context) => Mycubit(),
        child: BlocConsumer<Mycubit, Sellerstates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
            backgroundColor: Color(0xff010155),
            title: Text('Seller', style: TextStyle(color: Color(0xffffffff))),
            actions: [
              IconButton(onPressed: (){
                Mycubit.get(context).translateor(context);

              }, icon: Icon(Icons.language)),
            ],
              ),
              drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff010155),
                  ),
                  child: Image(image: AssetImage('images/seller.png')),
                ),
                ListTile(
                  leading: Icon(Icons.login, color: Color(0xff010155)),
                  title: Text("login".tr,
                      style: TextStyle(
                          color: Color(0xff010155),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));


                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.local_offer_sharp, color: Color(0xff010155)),
                  title: Text("offers".tr,
                      style: TextStyle(
                          color: Color(0xff010155),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Color(0xff010155)),
                  title: Text('about'.tr,
                      style: TextStyle(
                          color: Color(0xff010155),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
              ),

              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                    Text(
                      'shops'.tr,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 180,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Shops(context),
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          itemCount: 10),
                    ),
                    Text(
                      'shops'.tr,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.appcolo,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 180,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => departments(),
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          itemCount: 10),
                    )
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
