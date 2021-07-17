import 'package:flutter/material.dart';

class RightSearch extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  
  void printTheText(){
    print(controller.text);
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      width: double.infinity,
      height: 70,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.23),
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.grey,),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: const BorderRadius.all(Radius.circular(25.0))
                )
              ),
            )
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.notification_add),
              onPressed: printTheText,
              tooltip: "Check notification",
              splashColor: Colors.blue,
            )
          )
        ],
      ),
    );
  }
}