import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/ScopedCounters.dart';

class widget3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<ScopedCounters>(
      builder: (context, child, model) => Text("Widget 3 is ${model.count3.count}"),
    );
  }
}