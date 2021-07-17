import 'package:dashboard/screens/home/web/components/grid.dart';
import 'package:flutter/material.dart';

class HomeMiddleQuickStat extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.infinity,
      height: 145.0,
      child: QuickStatGrid() 
    );
  }
}