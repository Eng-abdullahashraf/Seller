import 'package:flutter/material.dart';
class selling extends StatelessWidget {
  const selling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff058060),
            title: Text('فاتورة بيع جديده',
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('اضف منتج',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: TextButton(
                            onPressed: () {}, child: Text('استخدم الباركود')),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(decoration: InputDecoration(
                          hintText: 'ادخل اسم منتج او صنف بالفاتورة',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));;
  }
}
