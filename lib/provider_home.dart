import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provide/provider/count_provider.dart';
import 'package:provider/provider.dart';

class ProviderHome extends StatelessWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ProviderHomeContent();
  }
}

class _ProviderHomeContent extends StatefulWidget {
  const _ProviderHomeContent({Key? key}) : super(key: key);

  @override
  State<_ProviderHomeContent> createState() => _ProviderHomeContentState();
}

class _ProviderHomeContentState extends State<_ProviderHomeContent> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    _timer = Timer.periodic(Duration(minutes: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider_1'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            print('Just this widget build');
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
