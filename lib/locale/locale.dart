

import 'package:get/get.dart';


import 'ar.dart';
import 'en.dart';




class Mylocale implements Translations{


  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'ar' : ar,
    'en' : en,

  };



}
