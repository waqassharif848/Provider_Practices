import 'package:flutter/material.dart';
import 'package:provide/Fav_Exam_Provider/fav_provider.dart';
import 'package:provide/Theme_exam_provider/Dark_screen.dart';
import 'package:provide/Theme_exam_provider/theme_change_provider.dart';
import 'package:provide/provider/count_provider.dart';
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
      ChangeNotifierProvider(create: (_) => ExampleProvider()),
      ChangeNotifierProvider(create: (_) => FavProvider()),
      ChangeNotifierProvider(create: (_) => ThemeChanger()),
    ],

      child: Builder(builder: (BuildContext context){
        final themeChanger= Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Provider_1',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(
              color: Colors.pink,
            ),
            textTheme: TextTheme(
              titleMedium: TextStyle(color: Colors.orange),
            ),
            iconTheme: IconThemeData(
              color: Colors.green,
            )
          ),
          home: DarkScreen(),
        );
      })
    );

  }
}





