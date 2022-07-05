import 'package:flutter/material.dart';
import 'package:rpn_calculator/model/value/numeric_value.dart';

class NumericValueView extends StatelessWidget {
  int index;
  NumericValue value;

  NumericValueView(this.index, this.value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('${index}:'),
      title: Text(value.value.toString()),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        IconButton(onPressed: null, icon: const Icon(Icons.delete)),
        IconButton(onPressed: null, icon: const Icon(Icons.arrow_downward))
      ]),
    );
  }
}
