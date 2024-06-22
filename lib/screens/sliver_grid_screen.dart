import 'package:flutter/material.dart';
import 'my_header_delegate.dart';

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeaderDelegate(
        maxHeight: 100,
        minHeight: 100,
        child: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Card(
                child: Center(
                  child: Text('Item $index'),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ),
    );
  }
}