import 'package:cool_stuff/parralax/custom_parralax.dart';
import 'package:cool_stuff/view/date_page.dart';
import 'package:cool_stuff/view/androidDate_picker.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0XFF07162e)),
      debugShowCheckedModeBanner: false,
      home: const DatePage(),
    );
  }
}