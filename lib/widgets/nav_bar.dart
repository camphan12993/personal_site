import 'package:flutter/material.dart';
import 'package:personal_site/ui/nav_button.dart';

class NavBar extends StatelessWidget {
  final int activeIndex;
  final Function onChangeTab;

  NavBar({this.activeIndex, this.onChangeTab});

  final navBtns = [
    {
      "icon": Icons.home,
      "title": 'Home',
    },
    {"icon": Icons.person, "title": 'About me'},
    {"icon": Icons.work, "title": 'Work'},
    {"icon": Icons.email, "title": 'Contact'}
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      child: Row(
        children: navBtns.asMap().entries.map((e) {
          var value = e.value;
          return GestureDetector(
            onTap: () {
              onChangeTab(e.key);
            },
            child: NavButton(
              icon: value['icon'],
              title: value['title'],
              isActive: e.key == activeIndex,
            ),
          );
        }).toList(),
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
