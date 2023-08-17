import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/drawer/printersettings.dart';
import 'package:seller/Screens/drawer/treasury.dart';
import 'package:seller/Screens/store/account%20management.dart';
import 'package:seller/Screens/store/add%20product.dart';
import 'package:seller/Screens/store/buying.dart';
import 'package:seller/Screens/store/coustomers.dart';
import 'package:seller/Screens/store/expenses.dart';
import 'package:seller/Screens/store/inventory.dart';
import 'package:seller/Screens/store/selling.dart';
import 'package:seller/Screens/store/suppliers.dart';
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
                backgroundColor: Color(0xff058060),
               actions:[ Padding(
                 padding: const EdgeInsets.only(left: 5,right: 5),
                 child: IconButton(icon: Icon(Icons.arrow_forward),color: Color(0xffffffff), onPressed: () {
                   Navigator.pop(context);
                 },),
               )],
              ),
              drawer: Drawer(
                  child: ListView(
                children: [
                  DrawerHeader(
                    child: Image.network(
                      'https://papik.pro/uploads/posts/2021-11/1636109504_1-papik-pro-p-logotipi-odezhdi-foto-1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'treasury'.tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.monetization_on_outlined,color: Color(0xff000000)),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Treasury()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      'printersettings'.tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.print,color: Color(0xff000000),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PrinterSettings()));
                    },
                  ),
                  ListTile(
                    title: Text(
                      'settings'.tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.settings,color: Color(0xff000000)),
                  ),
                  SizedBox(height: 20,),
                  Divider(color: Color(0xff000000),),
                  ListTile(
                    title: Text(
                      'technicalsupport'.tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.phone,color: Color(0xff000000),),
                  ),
                  ListTile(
                    title: Text(
                      "about".tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.supervised_user_circle_sharp,color: Color(0xff000000),),
                  ),
                  ListTile(
                    title: Text(
                      'shareapp'.tr,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    leading: Icon(Icons.share,color: Color(0xff000000),),
                  ),
                ],
              )),
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: Text('productstore'.tr,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => inventorypage()));
                              },
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color(0xff058060),
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(image: AssetImage('images/store.jpeg'),fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text('buying'.tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Text('sale'.tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => buying()));
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(image: AssetImage('images/seal.jpg'),fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => selling()));
                                  },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(image: AssetImage('images/buy.jpg'),fit: BoxFit.cover),
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text('suppliers'.tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                    child: Text('customers'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  suppliers()));
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(image: AssetImage('images/mord.jpeg')),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => customers()));
                                  },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(image: AssetImage('images/customer.jpg'),fit: BoxFit.cover),
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text('expenses'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))),
                                SizedBox(width: 15),
                                Expanded(
                                    child: Text('account'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  expenses()));
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xff058060),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(image: AssetImage('images/fead.jpg'),fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                accountmanagement()));
                                  },
                                  child: Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xff058060),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(image: AssetImage('images/reports.jpg'),)
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          )
                        ],
                      )
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
