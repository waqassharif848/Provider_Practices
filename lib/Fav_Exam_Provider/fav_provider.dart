import 'package:flutter/foundation.dart';

class FavProvider with ChangeNotifier{
  List<int> _SelectedItem= [];
  List<int> get SelectedItem=> _SelectedItem;

  void addItems(int value){
    _SelectedItem.add(value);
    notifyListeners();
  }

  void removeItems(int value){
    _SelectedItem.remove(value);
    notifyListeners();
  }
  }
