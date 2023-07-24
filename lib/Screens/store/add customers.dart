import 'package:flutter/material.dart';
import 'package:seller/component.dart';
class addcustomers extends StatelessWidget {
  const addcustomers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
            title: Text('عميل جديد', style: TextStyle(color: Colors.white)),
          ),
          body: SingleChildScrollView(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('اسم العميل',
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
                            hintText: 'ادخل اسم العميل',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('العنوان',
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
                            hintText: 'ادخل عنوان العميل',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('رقم الهاتف',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                        ),
                        child: TextFormField(keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'ادخل رقم الهاتف',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('الملاحظات',
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
                            hintText: 'اضف ملاحظاتك',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(children: [
                          Expanded(child: Buttonfi('حفظ', 50, 80, 20, Color(0xff058060), Color(0xffffffff), (){}, 20)),
                          SizedBox(width: 10,),
                          Expanded(child: Buttonfi('مسح', 50, 80, 20, Color(0xff058060), Color(0xffffffff), (){}, 20))
                        ],),
                      )
                    ]),
              )),
        ));
  }
}
