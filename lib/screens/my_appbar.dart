import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'My Favorite Car',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
          ),
        ),
        background: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD891ewJ5FqJ1wt0G6HjSANr6LBmMHRe6RHg&s',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
