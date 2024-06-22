import 'package:flutter/material.dart';
import 'package:now_homework_customscrollview_cliverappbar/screens/fashion_appbar.dart';
import 'package:now_homework_customscrollview_cliverappbar/screens/list_screen.dart';
import 'package:now_homework_customscrollview_cliverappbar/screens/popular_appbar.dart';
import 'package:now_homework_customscrollview_cliverappbar/screens/sliver_grid_screen.dart';
import 'my_appbar.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isPopularVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    print(_scrollController.offset);
  }

  void _scrollListener() {
    if (_scrollController.offset >= 500 && !_isPopularVisible) {
      setState(() {
        _isPopularVisible = false;
      });
    } else if (_scrollController.offset < 500 && !_isPopularVisible) {
      setState(() {
        _isPopularVisible = true;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          MyAppBar(),
          if (_isPopularVisible) PopularHeader(),
          MyGrid(),
          MensFashionHeader(),
          MyList(),
        ],
      ),
    );
  }
}
