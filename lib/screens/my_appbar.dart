import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Order Details'),
        background: Image.network(
          'https://ae04.alicdn.com/kf/Sae31b1c70384443391480a42e552f287l.jpg_640x640.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
