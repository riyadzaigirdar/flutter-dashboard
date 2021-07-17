import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './web/webhome.dart';
import './mobile/mobilehome.dart';
import './tablet/tablethome.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        if(sizingInformation.isDesktop){
          return WebHome();
        }
        if(sizingInformation.isTablet){
          return TabletHome();
        }
        return MobileHome();  
      }
      );
  }
}