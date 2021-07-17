import 'package:dashboard/screens/home/web/components/booking.dart';
import 'package:dashboard/models/booking.dart';
import 'package:flutter/material.dart';

class Bookings  extends StatelessWidget {
  final List<Book> bookings = getBookingValues();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Wrap(
        children: bookings.map((item) => 
        Booking(book: item,)).toList()
      ),
    );
  }
}