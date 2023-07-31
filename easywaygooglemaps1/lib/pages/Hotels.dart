import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../tools/body.dart';
import 'Loginscreen.dart';
import 'check.dart';

class HotelsScreen extends StatefulWidget {
  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        icon: SvgPicture.asset("assets/svg/back.svg"),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/svg/search.svg",
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
