import 'package:flutter/material.dart';
import 'package:provide/provider/count_provider.dart';
import 'package:provide/provider_example/Example_one.dart';
import 'package:provide/provider_example/Example_one_provider.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CountProvider()),
      ChangeNotifierProvider(create: (_) => ExampleProvider())
    ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Provider_1',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: ExamOne(),
    ),);

  }
}



