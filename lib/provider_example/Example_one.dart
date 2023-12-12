import 'package:flutter/material.dart';
import 'package:provide/provider_example/Example_one_provider.dart';
import 'package:provider/provider.dart';


class ExamOne extends StatefulWidget {
  const ExamOne({super.key});

  @override
  State<ExamOne> createState() => _ExamOneState();
}

class _ExamOneState extends State<ExamOne> {

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleProvider>(builder: (context, value, child){
            return  Slider(
                min:0 ,
                max:1 ,
                value: value.value, onChanged: (val){
              value.setValue(val);
            });
          }),
          Consumer<ExampleProvider>(builder: (context, value, child){
            return  Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(value.value),
                    ),
                    child: Center(child: Text('Container 1', style: TextStyle(fontSize: 30),)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: Center(child: Text('Container 2', style: TextStyle(fontSize: 30),)),
                  ),
                )
              ],
            );
          }),

        ],
      ),
    );
  }
}
