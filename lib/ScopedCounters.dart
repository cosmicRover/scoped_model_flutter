import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/CounterModel.dart';

//extends Model from scoped model
class ScopedCounters extends Model{

  //init 3 different vars from the model
  CounterModel count1 = CounterModel();
  CounterModel count2 = CounterModel();
  CounterModel count3 = CounterModel();

  //simple func that increments the vars and notifies the listeners
  void increment(){
    count1.count += 1;
    count2.count += 5;
    count3.count += 10;

    notifyListeners();
  }

}