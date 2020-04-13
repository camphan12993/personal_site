import 'package:flutter/material.dart';
import 'package:personal_site/pages/about_me.dart';
import 'package:personal_site/pages/contact.dart';
import 'package:personal_site/pages/genernal_info.dart';
import 'package:personal_site/pages/work.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double width;
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(updateIndex);
  }

  updateIndex() {
    var newIndex = (_scrollController.offset.round() / width).round();
    if (newIndex != activeIndex) {
      setState(() {
        activeIndex = newIndex;
      });
    }
  }

  updateTab(int index) {
    _scrollController.jumpTo(index * width);
  }

  @override
  Widget build(BuildContext context) {
    final screenWitth = MediaQuery.of(context).size.width;
    width = screenWitth;
    return Scaffold(
        body: Container(
      color: bg,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          NavBar(activeIndex: activeIndex, onChangeTab: updateTab),
          Expanded(
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GeneralInfo(),
                AboutMe(),
                WorkPage(),
                Contact()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
