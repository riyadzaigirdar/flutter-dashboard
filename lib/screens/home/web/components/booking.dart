import 'package:dashboard/models/booking.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget{
  final Book book;

  const Booking({
    required this.book
  });
  
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(20.0),
      width: 275,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
            ),
          ),
          Text(
            "Service",
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black.withOpacity(0.23)
            ),
          ),
          Text(
            "Flutter Development",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.23)
                      ),
                    ),
                    Text("Mon, 31 Aug")
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.23)
                      ),
                    ),
                    Text("9:58 PM")
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              TextButton(            
                onPressed: (){}, 
                child: Text(
                  "Accept Booking",
                  style: TextStyle(
                    color: Colors.purple
                    ),
                  ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0
                  ),
                  backgroundColor: Colors.white, 
                ),
              ),
              Spacer(),
              TextButton(            
                onPressed: (){}, 
                child: Text(
                  "Decline",
                  style: TextStyle(
                    color: Colors.black
                    ),
                  ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0
                  ),
                  backgroundColor: Colors.white, 
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}