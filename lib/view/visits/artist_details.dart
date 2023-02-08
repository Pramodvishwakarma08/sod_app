// import 'package:flutter/material.dart';
// import '../../Helper/colors.dart';
// import '../../Helper/widgets.dart';
// import '../appBar/appBar.dart';
// import '../buttons/appButton.dart';
// import '../widget/card.dart';
// import 'booking_form.dart';
//
// class JobDetails extends StatelessWidget {
//   final model;
//   final i;
//   JobDetails({Key? key, this.model, this.i}) : super(key: key);
//
//   List<Map<String, dynamic>> jobs = [
//     {
//       "time": "9am to 1pm",
//       "day": "Mon",
//       "hours": "4 hrs",
//       "date": "08 July 2022"
//     },
//     {
//       "time": "9am to 1pm",
//       "day": "Tue",
//       "hours": "6 hrs",
//       "date": "09 July 2022"
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: customAppBar("Artist Details", context),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height / 3,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: const DecorationImage(
//                           image: AssetImage('assets/images/people1.png'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 7,
//                           ),
//                           Text(
//                             "Pari Singh",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Container(
//                             child: Icon(
//                               Icons.location_on,
//                               color: colors.primary,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             "83 , Pink city , Jaipur",
//                             style: TextStyle(color: colors.black1),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Plam",
//                                     textScaleFactor: 1.3,
//                                     style: TextStyle(fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Elbow",
//                                     textScaleFactor: 1.3,
//                                     style: TextStyle(fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 8.0),
//                                   child: Text(
//                                     "Legs",
//                                     textScaleFactor: 1.3,
//                                     style: TextStyle(fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//
//
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Icon(Icons.currency_rupee),
//                                     Text(
//                                       "1500",
//                                       textScaleFactor: 1.3,
//                                       style: TextStyle(fontWeight: FontWeight.w500),
//                                     ),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Icon(Icons.currency_rupee),
//                                     Text(
//                                       "1500",
//                                       textScaleFactor: 1.3,
//                                       style: TextStyle(fontWeight: FontWeight.w500),
//                                     ),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Icon(Icons.currency_rupee),
//                                     Text(
//                                       "500",
//                                       textScaleFactor: 1.3,
//                                       style: TextStyle(fontWeight: FontWeight.w500),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//
//
//
//
//                       SizedBox(
//                         height: 30,
//                       ),
//
//                       Text(
//                         " Description",
//                         style: TextStyle(
//                             fontSize: 19, fontWeight: FontWeight.w500),
//                       ),
//                       Container(
//                           padding: const EdgeInsets.only(
//                               left: 10, top: 15, right: 5),
//                           width: MediaQuery.of(context).size.width,
//                           height: 150,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[100],
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Text(
//                             "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful contentor a typeface without relying on meaningful content",
//                             maxLines: 8,
//                             style: TextStyle(fontSize: 14),
//                           )),
//                       AppBtn(
//                         title: "Booking",
//                         onPress: (){
//                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BookingForm()));
//                         },
//                         height: 50,
//                         width: MediaQuery.of(context).size.width*.80,
//                         fSize: 18,
//                       )
//
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
