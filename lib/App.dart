import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/ScopedCounters.dart';
import 'package:scoped_model_flutter/widget1.dart';
import 'package:scoped_model_flutter/widget2.dart';
import 'package:scoped_model_flutter/widget3.dart';

class App extends StatelessWidget {

  //init an instance of the scoped counters. Ideally you want it somewhere more
  //top level
  final ScopedCounters scopedCounters = ScopedCounters();

  @override
  Widget build(BuildContext context) {
    //wraps the scaffold with scoped models
    return ScopedModel<ScopedCounters>(
      model: scopedCounters,
      child: Scaffold(
        appBar: AppBar(title: Text("Scoped model")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget1(),
              widget2(),
              widget3()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
            scopedCounters.increment();
        }, tooltip: "increment", child: Icon(Icons.add),),
      ),
    );
  }
}
