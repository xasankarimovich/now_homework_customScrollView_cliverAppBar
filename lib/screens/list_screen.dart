import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(20, (index) => ListTile(title: Text('Item $index'))),
      ),
    );
  }
}
