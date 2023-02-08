import 'package:flutter/material.dart';
import '../../Helper/widgets.dart';
import '../bottomBar/bottombar.dart';
import '../buttons/appButton.dart';

class BookingSuccesful extends StatelessWidget {
  const BookingSuccesful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              child: Image.asset('assets/images/booking.png',

              ),
            ),
          ),
          const SizedBox(height: 20,),

          titleText("Booking Succesful", context, 26),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: subTitleText("Lorem ipsum is dummy text used in laying out print, graphic or web designs. ", context, 14),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.15,
          ),

          AppBtn(
            title: "Back to Home",
            onPress: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNav()));
            },
            height: 50,
            width: MediaQuery.of(context).size.width*.80,
            fSize: 18,
          )
        ],
      ),
    );
  }
}
