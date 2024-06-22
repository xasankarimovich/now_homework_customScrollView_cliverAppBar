import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return ListTile(
            leading: Image.network('https://ae04.alicdn.com/kf/S064216fd31ae4f68b2cee5cc1d74009aP.jpg_640x640.jpg'),
            title: Text('Men\'s Fashion Collection'),
            subtitle: Text('Discount up to 50%'),
          );
        },
        childCount: 20,
      ),
    );
  }
}
