



import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  List<Widget> accmanage =[sell(),salary(),prosell(),prosala()];
  int? a = 0;

  void changea(z){
    a=z;
    emit(Sellerchange());
  }
  List<Widget> agreedata = [sales(),purchases()];
  int? g = 0;

  void changeg(d){
    g=d;
    emit(Sellerchange());
  }

  List<Widget> c=[overview(),aggregatedata()];
  int? v=0;
  void changev(d){
    v=d;
    emit(Sellerchange());
  }
}