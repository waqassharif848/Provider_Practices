import 'dart:async';

import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int count= 0;
  @override
  void initState(){
    super.initState();
    
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      // print(count);

      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print("build" + count.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[

          Center(child: Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),
            style: TextStyle(fontSize: 50),)),
          Container(
            child: Center(child: Text(count.toString(), style: TextStyle(fontSize: 50),)),
          )
        ],
      ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     count++;
        //     print(count);
        //     setState(() {
        //
        //     });
        //   },
        //   child: Icon(Icons.add),
        // ),
    );
  }
}
