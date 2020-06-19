import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
        height: 80,
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BottomNavItem(svgScr: "assets/icons/calendar.svg",
                  title: "Today"),
              BottomNavItem(svgScr: "assets/icons/gym.svg",
                title: "All Exercises",
                isActive: true,),
              BottomNavItem(svgScr: "assets/icons/Settings.svg",
                  title: "Setting")
            ]
        )
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final String svgScr;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title,
              style: TextStyle(color: isActive ? kActiveIconColor : kTextColor))
        ],
      ),
    );
  }
}
