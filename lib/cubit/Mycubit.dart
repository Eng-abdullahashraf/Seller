



import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:seller/component.dart';
import 'package:seller/cubit/states.dart';

class Mycubit extends Cubit<Sellerstates>{

  Mycubit(): super(Sellerinit());

  static Mycubit get(context)=> BlocProvider.of(context);


  DateTime dateTime=DateTime(1997,08,25);

  void changedate(date){
    dateTime=date;
    emit(Sellerchange());
  }

  final List<String> im=[
    'images/im.jpg',
    'images/ima.jpg',
    'images/imag.jpg',

  ];

  List<Widget>? gene(){
    return im.map((element)=>Cotainer()).toList();
  }

  int? valueeradio=1;
  void changeradio(value){
    valueeradio=value;
    emit(Sellerchange());
  }

  List<Widget>? li=[
    Cotainer(),
    Cotainer(),
    Cotainer(),

  ];






  void translateor(BuildContext context){
    translator.setNewLanguage(
      context,
      newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
      remember: true,
      restart: true,
    );
  }


}