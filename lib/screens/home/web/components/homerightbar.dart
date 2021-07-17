import 'package:dashboard/screens/home/web/components/rightsearch.dart';
import 'package:flutter/material.dart';

class HomeRightBar extends StatelessWidget {
  final size;

  const HomeRightBar({
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.screenSize.width * 0.209,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.5, 0.0),
            color: Colors.black.withOpacity(0.23),
            blurRadius: 2.0,
            spreadRadius: 2.0
          )
        ]
      ),
      child: ListView(
        children: [
          RightSearch()
        ],
      ),
    );
  }
}