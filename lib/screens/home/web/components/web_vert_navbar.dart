import 'package:flutter/material.dart';
import 'package:dashboard/screens/home/web/components/navlogos.dart';

class WebVertNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2.0,
            offset: Offset(
              0.8, 0.0
            ),
            spreadRadius: 2.0
          )
        ]
      ),
      child: NavLogos(),
    );
  }
}