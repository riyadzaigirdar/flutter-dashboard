import 'package:flutter/material.dart';

class HomeMiddleTopbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Welcome Back!",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.black.withOpacity(0.7)
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
              backgroundColor: Colors.purple
            ),
            onPressed: (){}, 
            child: Text("Customize Blocks"),
          )
        ],
      ),
    );
  }
}