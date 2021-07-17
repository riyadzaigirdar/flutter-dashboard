import 'package:dashboard/screens/home/web/components/homerightbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'components/web_vert_navbar.dart';
import 'components/homemiddle.dart';

class WebHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        return Scaffold(
          body: Row(
            children: [
              WebVertNavbar(),
              HomeMiddle(size: sizingInformation),
              HomeRightBar(size: sizingInformation)
            ],
          ),
        );
      });
  }
}