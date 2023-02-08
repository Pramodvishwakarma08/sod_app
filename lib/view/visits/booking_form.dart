// import 'package:flutter/material.dart';
// import '../../Helper/colors.dart';
// import '../appBar/appBar.dart';
// import '../buttons/appButton.dart';
//
// class BookingForm extends StatefulWidget {
//   const BookingForm({Key? key}) : super(key: key);
//
//   @override
//   State<BookingForm> createState() => _BookingFormState();
// }
//
// class _BookingFormState extends State<BookingForm> {
//   var items = [
//     'Select Vehicle',
//     '2-Wheeler',
//     '3-Wheeler',
//     '4-Wheeler',
//   ];
//
//   String? dropdownValue = "Select Vehicle";
//   String _dateValue = '';
//   String? sDate;
//   var dateFormate;
//
//
//
//   TextEditingController dateController = TextEditingController();
//   TextEditingController timeController = TextEditingController();
//   TextEditingController palmController = TextEditingController();
//   TextEditingController elbowController = TextEditingController();
//   TextEditingController legsController = TextEditingController();
//   TextEditingController  addressController = TextEditingController();
//
//   Future _selectDate() async {
//     DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: new DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime(2025),
//         //firstDate: DateTime.now().subtract(Duration(days: 1)),
//         // lastDate: new DateTime(2022),
//         builder: (BuildContext context, Widget? child) {
//           return Theme(
//             data: ThemeData.light().copyWith(
//                 primaryColor: Colors.black, //Head background
//                 accentColor: Colors.black,
//                 colorScheme: ColorScheme.light(primary: colors.primary),
//                 buttonTheme:
//                     ButtonThemeData(textTheme: ButtonTextTheme.primary)),
//             child: child!,
//           );
//         });
//     if (picked != null)
//       setState(() {
//         String yourDate = picked.toString();
//         _dateValue = convertDateTimeDisplay(yourDate);
//         print(_dateValue);
//         dateFormate =
//             DateFormat("dd/MM/yyyy").format(DateTime.parse(_dateValue ?? ""));
//         sDate =
//             DateFormat("yyyy-MM-dd").format(DateTime.parse(_dateValue ?? ""));
//         dateController.text = dateFormate;
//       });
//   }
//
//   String convertDateTimeDisplay(String date) {
//     final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
//     final DateFormat serverFormater = DateFormat('yyyy-MM-dd');
//     final DateTime displayDate = displayFormater.parse(date);
//     final String formatted = serverFormater.format(displayDate);
//     return formatted;
//   }
//
//   TimeOfDay? selectedTime;
//
//   _selectTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//         context: context,
//         useRootNavigator: true,
//         initialTime: TimeOfDay.now(),
//         builder: (BuildContext context, Widget? child) {
//           return Theme(
//             data: ThemeData.light().copyWith(
//                 colorScheme: ColorScheme.light(primary: colors.primary),
//                 buttonTheme: ButtonThemeData(
//                     colorScheme: ColorScheme.light(primary: colors.primary))),
//             child: MediaQuery(
//                 data: MediaQuery.of(context)
//                     .copyWith(alwaysUse24HourFormat: false),
//                 child: child!),
//           );
//         });
//     if (timeOfDay != null && timeOfDay != selectedTime) {
//       setState(() {
//         selectedTime = timeOfDay.replacing(hour: timeOfDay.hourOfPeriod);
//         timeController.text = selectedTime!.format(context);
//       });
//     }
//     var per = selectedTime!.period.toString().split(".");
//     print(
//         "selected time here ${selectedTime!.format(context).toString()} and ${per[1]}");
//   }
//
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: colors.primary,
//       appBar: customAppBar("Send Package", context),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(50), topLeft: Radius.circular(50)),
//             color: colors.whit,
//           ),
//           width: MediaQuery.of(context).size.width,
//           // height: MediaQuery.of(context).size.height - 97.600,
//           child: Column(
//             children: [
//               Container(
//                 height: 20,
//                 width: MediaQuery.of(context).size.width,
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: _visitFields()),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _visitFields() {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 5.0),
//                     child: Text(
//                       "Event Date",
//                       style: TextStyle(fontSize: 15, color: colors.fntClr),
//                     ),),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//                     child: InkWell(
//                         onTap: () {
//                           _selectDate();
//                         },
//                         child: Container(
//                           height: 50,
//                           width: MediaQuery.of(context).size.width / 2.3,
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           alignment: Alignment.centerLeft,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               border: Border.all(
//                                   color: colors.fntClr.withOpacity(0.5))),
//                           child: _dateValue.isNotEmpty
//                               ? Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "$dateFormate",
//                                       style: const TextStyle(
//                                           color: colors.fntClr, fontSize: 15),
//                                     ),
//                                     const Icon(Icons.calendar_month,
//                                         color: colors.subTxtClr)
//                                   ],
//                                 )
//                               : Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "",
//                                       style: TextStyle(
//                                           color: colors.fntClr.withOpacity(0.5),
//                                           fontSize: 15),
//                                     ),
//                                     const Icon(
//                                       Icons.calendar_month,
//                                       color: colors.subTxtClr,
//                                     )
//                                   ],
//                                 ),
//                         )
//                         ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 5.0),
//                     child: Text(
//                       "Event Time",
//                       style: TextStyle(fontSize: 15, color: colors.fntClr),
//                     ),),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//                     child: InkWell(
//                       onTap: () {
//                         _selectTime(context);
//                       },
//                       child: Container(
//                           height: 50,
//                           width: MediaQuery.of(context).size.width / 2.3,
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           alignment: Alignment.centerLeft,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               border: Border.all(
//                                   color: colors.fntClr.withOpacity(0.5))),
//                           child: selectedTime != null
//                               ? Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text("${selectedTime!.format(context)}"),
//                                     const Icon(
//                                       Icons.access_time,
//                                       color: colors.subTxtClr,
//                                     )
//                                   ],
//                                 )
//                               : Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "",
//                                       style: TextStyle(
//                                           color: colors.fntClr.withOpacity(0.5),
//                                           fontSize: 15),
//                                     ),
//                                     const Icon(
//                                       Icons.access_time,
//                                       color: colors.subTxtClr,
//                                     )
//                                   ],
//                                 )),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(height: 10,),
//           const Padding(
//             padding: EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Palm",
//               style: TextStyle(fontSize: 15, color: colors.fntClr),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width - 40,
//               child: TextFormField(
//                 controller: palmController,
//                 keyboardType: TextInputType.phone,
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return "Enter Number of pickup Service";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     // suffixIcon: Icon(Icons.hourglass_bottom),
//                     // suffix: const Icon(Icons.hourglass_top_outlined),
//                     hintText: "Enter the number of people",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:
//                             BorderSide(color: colors.fntClr.withOpacity(0.5)))),
//               ),
//             ),
//           ),
//           SizedBox(height: 10,),
//
//           const Padding(
//             padding: EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Elbow",
//               style: TextStyle(fontSize: 15, color: colors.fntClr),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width - 40,
//               child: TextFormField(
//                 controller: elbowController,
//                 keyboardType: TextInputType.phone,
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return "Enter Number of pickup Service";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     // suffixIcon: Icon(Icons.hourglass_bottom),
//                     // suffix: const Icon(Icons.hourglass_top_outlined),
//                     hintText: "Enter the number of people",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:
//                             BorderSide(color: colors.fntClr.withOpacity(0.5)))),
//               ),
//             ),
//           ),
//           SizedBox(height: 10,),
//
//           const Padding(
//             padding: EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Legs",
//               style: TextStyle(fontSize: 15, color: colors.fntClr),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width - 40,
//               child: TextFormField(
//                 controller: legsController,
//                 keyboardType: TextInputType.phone,
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return "Enter Number of pickup Service";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     // suffixIcon: Icon(Icons.hourglass_bottom),
//                     // suffix: const Icon(Icons.hourglass_top_outlined),
//                     hintText: "Enter the number of people",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:
//                             BorderSide(color: colors.fntClr.withOpacity(0.5)))),
//               ),
//             ),
//           ),
//           SizedBox(height: 10,),
//
//           const Padding(
//             padding: EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Address",
//               style: TextStyle(fontSize: 15, color: colors.fntClr),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0, bottom: 10),
//             child: Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width - 40,
//               child: TextFormField(
//                 controller: addressController,
//
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return "Enter Address";
//                   }
//                 },
//                 decoration: InputDecoration(
//                     // suffixIcon: Icon(Icons.hourglass_bottom),
//                     // suffix: const Icon(Icons.hourglass_top_outlined),
//                     // hintText: "Number of hours",
//                     hintText: "Enter Address ",
//
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(7),
//                         borderSide:
//                             BorderSide(color: colors.fntClr.withOpacity(0.5)))),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           AppBtn(
//             onPress: () {
//               if (     elbowController.text.toString() == "" ||
//                        palmController.text.toString() == "" ||
//                        legsController.toString() == "" ||
//                        dateController.text.toString() == "" ||
//                        timeController.text.toString() == "" ||
//                        addressController.text.toString() == ""
//                   ) {
//                 Fluttertoast.showToast(
//                   msg: "All Field Requried",
//                   backgroundColor: colors.primary,
//                   fontSize: 14,
//                 );
//               } else {
//                 showDialog(
//                   context: context,
//                   builder: (ctx) => AlertDialog(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     title: const Center(
//                       child: Text("Summary"),
//                     ),
//                     content: SingleChildScrollView(
//                         child: Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           rowElements("Event Date", dateController.text.toString()),
//                           rowElements("Event Time", timeController.text.toString()),
//                           rowElements("Address", addressController.text.toString()),
//
//                           rowElements("Elbow ",
//                               elbowController.text.toString()),
//                           rowElements(
//                               "Legs",
//                               legsController.text.toString()),
//                           // rowElements(
//                           //     "palm", palmController.toString()),
//
//
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Center(
//                             child: Container(
//                               width: 250,
//                               height: 50,
//                               child: ElevatedButton(
//                                 child: Text(
//                                   'Pay Now',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   shape: StadiumBorder(),
//                                   primary: colors.primary,
//                                 ),
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Payment()));
//                                 },
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           Center(
//                             child: InkWell(
//                               onTap: () {
//                                 Navigator.pop(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => BookingForm()));
//                               },
//                               child: Container(
//
//                                 width: 250,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(width: 2,color: colors.primary),
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     'Cancel',
//                                     style: TextStyle(
//                                       fontSize: 20,color: colors.primary,fontWeight: FontWeight.w500
//                                     ),),
//                                 )
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     )),
//                     actions: <Widget>[],
//                   ),
//                 );
//               }
//             },
//             title: "Sumbit",
//             height: 45,
//             fSize: 16,
//             width: MediaQuery.of(context).size.width,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// Widget rowElements(String title, String value) {
//   return Container(
//     child: Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Text(
//             "$title",
//             style: TextStyle(
//               fontSize: 15,
//             ),
//             textAlign: TextAlign.right,
//           ),
//           Text(
//             '$value',
//             style: TextStyle(
//               fontSize: 10,
//             ),
//           ),
//         ]),
//         Container(
//           color: Colors.white,
//           height: 30.0,
//           child: Center(
//             child: CustomPaint(painter: DrawDottedhorizontalline()),
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// class DrawDottedhorizontalline extends CustomPainter {
//   Paint? _paint;
//   DrawDottedhorizontalline() {
//     _paint = Paint()
//       ..color = Colors.black12
//       ..strokeWidth = 1
//       ..strokeCap = StrokeCap.round;
//   }
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     for (double i = -120; i < 130; i = i + 10) {
//       if (i % 1 == 0)
//         canvas.drawLine(Offset(i, 0.0), Offset(i + 5, 0.0), _paint!);
//     }
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
