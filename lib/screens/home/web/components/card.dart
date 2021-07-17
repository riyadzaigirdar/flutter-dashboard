import 'package:dashboard/models/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuickStatCard extends StatelessWidget{
  final TabValue tab;

  QuickStatCard({
    required this.tab
  });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 1.0,
            offset: Offset(
              0.8, 0.8
            ),
            spreadRadius: 2.0
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 1.0,
            offset: Offset(
              -0.8, -0.8
            ),
            spreadRadius: 2.0
          )
        ]
      ),
      child: InkWell(
        onTap: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              tab.tabName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
            Text(
              tab.tabValue,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
