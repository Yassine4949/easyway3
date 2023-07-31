import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  ScrollController _scrollController = ScrollController();
  bool _showImage = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _showImage = false;
      });
    } else {
      setState(() {
        _showImage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Replace this with your desired widget structure
  }
}
