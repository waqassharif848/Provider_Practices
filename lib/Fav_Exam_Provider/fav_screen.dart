import 'package:flutter/material.dart';
import 'package:provide/Fav_Exam_Provider/fav_provider.dart';
import 'package:provider/provider.dart';
class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {

  List<int> selectedItem=[];
  @override
  Widget build(BuildContext context) {

    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Faverite provider'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FavProvider>(
              builder:(context, value, child) {
                return ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      onTap: (){
                        if(value.SelectedItem.contains(index))
                        {
                          value.removeItems(index);
                        }
                        else{
                        value.addItems(index);}
                      },
                      title: Text('item'+ index.toString()),
                      trailing: Icon(value.SelectedItem.contains(index) ?Icons.favorite: Icons.favorite_outline),
                    );
                  },
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
