import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/CounterModel.dart';


class ScopedCounters extends Model{
  CounterModel count1 = CounterModel();
  CounterModel count2 = CounterModel();
  CounterModel count3 = CounterModel();

  increment(){
    count1.count += 1;
    count2.count += 5;
    count3.count += 10;

    notifyListeners();
  }

}