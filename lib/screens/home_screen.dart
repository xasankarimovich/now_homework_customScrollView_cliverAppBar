import 'package:flutter/material.dart';
import 'package:now_homework_customscrollview_cliverappbar/screens/sliver_grid_screen.dart';
import 'list_screen.dart';
import 'my_appbar.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppBar(),
          MyGrid(),
          MyList(),
        ],
      ),
    );
  }
}
