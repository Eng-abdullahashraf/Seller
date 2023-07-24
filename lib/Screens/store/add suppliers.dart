import 'package:flutter/material.dart';

class addsuppliers extends StatelessWidget {
  const addsuppliers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff567600),
        title: Text('مورد جديد', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('رقم المورد',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              )
            ],
          ),
          ),
      ),
    ));
  }
}
