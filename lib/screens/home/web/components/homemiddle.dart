import 'package:dashboard/screens/home/web/components/homemiddlequickstat.dart';
import 'package:dashboard/screens/home/web/components/homemiddletopbar.dart';
import 'package:dashboard/screens/home/web/components/middletabs.dart';
import 'package:dashboard/screens/home/web/components/bookings.dart';
import 'package:flutter/material.dart';

class HomeMiddle extends StatelessWidget{
  final size;

  const HomeMiddle({
    required this.size
  });
  @override
  Widget build(BuildContext context){
    return Container(
            width: size.screenSize.width * 0.72,
            height: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: ListView(
              children: [
                HomeMiddleTopbar(),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
                  child: Text(
                    "Quick Stats", 
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold      
                    ),
                  ),
                ),
                HomeMiddleQuickStat(),
                MiddleTabs(),
                Bookings()
              ],
            ),
          );
  }
}

