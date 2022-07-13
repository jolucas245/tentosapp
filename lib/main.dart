import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../app/views/home/home_page_view.dart';
import '../app/views/splash/splash_page_view.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tentos Truco",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPageView(),
        "/home": (context) => const HomePageView(),
      }
    )
  );
}