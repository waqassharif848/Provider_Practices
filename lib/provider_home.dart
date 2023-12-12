import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provide/provider/count_provider.dart';
import 'package:provider/provider.dart';




class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(minutes: 1), (timer) {
      countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
  appBar: AppBar(
    title: Text('Provider_1'),
  ),
  body:Center(
    child: Consumer<CountProvider>(
      builder: (context, value, child){
        print('Just this widget build');
        return Text(countProvider.count.toString(),
          style: TextStyle(fontSize: 40),);
      }),
  ) ,
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      countProvider.setCount();
    },
    child: Icon(Icons.add),
  ),
);
  }
}
