import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seller/Screens/splash.dart';
import 'package:seller/cubit/Mycubit.dart';
import 'package:seller/cubit/states.dart';

import 'cubit/bloc_observer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'locale/locale.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );


  runApp( LocalizedApp(child: MyApp()));
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, Sellerstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
//Get.deviceLocale
            localizationsDelegates: translator.delegates, // Android + iOS Delegates
            locale: translator.locale, // Active locale
            supportedLocales: translator.locals(), // Loca
            home: Splash(),

            translations: Mylocale(),
            fallbackLocale: Locale('en'),
          );
        },
      ),
    );
  }
}
