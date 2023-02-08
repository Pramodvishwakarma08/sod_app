import 'package:flutter/material.dart';

import '../../Helper/widgets.dart';
import '../buttons/appButton.dart';
import 'login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/getStarted.png',

           ),
            const SizedBox(height: 30,),

            titleText("Lorem Ipsum simply", context, 26),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: subTitleText("Lorem ipsum is dummy text used in laying out print, graphic or web designs. ", context, 14),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height*.20,
            ),

            AppBtn(
              title: "Get Started",
              onPress: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
              },
              height: 50,
              width: MediaQuery.of(context).size.width*.80,
              fSize: 18,
            )
          ],
        ),
      ),
    );
  }
}
