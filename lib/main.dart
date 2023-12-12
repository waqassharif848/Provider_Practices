import 'package:flutter/material.dart';
import 'package:provide/provider/count_provider.dart';
import 'package:provide/provider_home.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CountProvider()),

    ],child: MaterialApp(
      title: 'Provider_1',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: ProviderHome(),
    ),);
  }
}


