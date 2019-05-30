import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/ScopedCounters.dart';

//each widgets are stateless widgets
class widget1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Each widget is marked to be a descendant of a scopedModel
    return ScopedModelDescendant<ScopedCounters>(
      //builder takes context, child (text) and model for passing of data
      builder: (context, child, model) => Text("Widget 1 is ${model.count1.count}"),
    );
  }
}