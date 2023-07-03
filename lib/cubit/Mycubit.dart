



import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:seller/cubit/states.dart';

class Mycubit extends Cubit<Sellerstates>{

  Mycubit(): super(Sellerinit());

  static Mycubit get(context)=> BlocProvider.of(context);

  final List<String> im=[
    'images/im.jpg',
    'images/ima.jpg',
    'images/imag.jpg',

  ];

  int? valueeradio=1;
  void changeradio(value){
    valueeradio=value;
    emit(Sellerchange());
  }

  List<Widget>? gene(){
    return im.map((element)=>ClipRRect(
      child: Image.asset(element, fit: BoxFit.cover,),
      borderRadius: BorderRadius.circular(15.0),
    )).toList();
  }


  void translateor(BuildContext context){
    translator.setNewLanguage(
      context,
      newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
      remember: true,
      restart: true,
    );
  }


}