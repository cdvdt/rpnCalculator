import 'package:flutter/material.dart';
import 'package:rpn_calculator/model/value/item.dart';
import 'package:rpn_calculator/model/value/numeric_value.dart';
import 'package:rpn_calculator/view/item/numeric_value_view.dart';

class MainView extends StatelessWidget {
  List<NumericValue> items = [NumericValue(10), NumericValue(20)];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('RPN Calculator')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) =>
                    NumericValueView(index, items[index]),
                itemCount: items.length,
                
                reverse: true),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:
                    const InputDecoration(hintText: 'New input here...', icon: Icon(Icons.input)),
              ))
        ],
      ),
    );
  }
}
