import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/ScopedCounters.dart';

class widget1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<ScopedCounters>(
      builder: (context, child, model) => Text("Widget 1 is ${model.count1.count}"),
    );
  }
}