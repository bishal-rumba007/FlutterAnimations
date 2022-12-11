import 'package:cool_stuff/parralax/custom_parralax.dart';
import 'package:flutter/material.dart';


const Color cyanCustom = Color(0xffcc4abd9c);

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
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: cyanCustom),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: CustomParralax(),
        ),
      ),
    );
  }
}
