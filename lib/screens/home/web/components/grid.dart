import 'package:dashboard/models/tabs.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/screens/home/web/components/card.dart';

class QuickStatGrid extends StatelessWidget{

  final List<TabValue> tabValues = getTabValues();

  @override
  Widget build(BuildContext context){
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: tabValues.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20.0,
          childAspectRatio: 1.7
          ),
        itemBuilder: (context, index) => QuickStatCard(tab: tabValues[index],)
      );
  }
}