
import 'package:flutter/material.dart';

class MiddleTabs extends StatefulWidget {
  @override
  _MiddleTabsState createState() => _MiddleTabsState();
}

class _MiddleTabsState extends State<MiddleTabs> {
  final List<String> middleTabs = ["Booking", "Enquiries", "My Service"];

  int selected = 0;

  void changeMiddleTab(int index){
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: middleTabs.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: ()=>changeMiddleTab(index),
                child: Container(
                  height: double.infinity,
                  width: 100.0,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          middleTabs[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: index == selected ? FontWeight.bold : null,
                            fontSize: 18
                          ),
                        ),
                      ),
                    if(index == selected)
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          height: 3.0,
                          color: Colors.orange,
                        )
                      )
                    ],
                  )
                ),
              );
            }
          )
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.black.withOpacity(0.23),
          ),
        )
      ],
    );
  }
}