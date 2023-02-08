import 'package:flutter/material.dart';

import '../appBar/appBar.dart';

class ArtistBooking extends StatefulWidget {
  const ArtistBooking({Key? key}) : super(key: key);

  @override
  State<ArtistBooking> createState() => _ArtistBookingState();
}

class _ArtistBookingState extends State<ArtistBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: customAppBar(" Artist Booking ", context),
      body: Column(
        children: [
        ],
      ),

    );
  }
}
