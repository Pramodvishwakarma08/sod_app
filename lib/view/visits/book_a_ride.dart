import 'package:flutter/material.dart';

import '../../Helper/colors.dart';
import '../appBar/appBar.dart';
import 'home.dart';
import '../buttons/appButton.dart';

class BookARide extends StatefulWidget {
  const BookARide({Key? key}) : super(key: key);

  @override
  State<BookARide> createState() => _BookARideState();
}

class _BookARideState extends State<BookARide> {
  @override
  Widget build(BuildContext context) {


    var items = [
      ' Online Pay',
      ' Cash Pay',
      ' UPI pay',
      // 'Short Notice Cancellation',
      // 'Provide Travel',
      // 'Report Writing(NDIA required)',
      // 'Telehealth'
      //
      //     '',
    ];
    String? dropdownValue;


    return Scaffold(
      backgroundColor: colors.primary,
      appBar: customAppBar("Book Ride", context),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            color: colors.whit,
          ),
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height - 97.600,
          child: Column(
            children: [
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // const Padding(
                        //   padding: EdgeInsets.only(left: 5.0),
                        //   child: Text(
                        //     "Pickup Service",
                        //     style: TextStyle(fontSize: 15, color: colors.fntClr),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 40,
                            child: TextFormField(
                              // controller: pickupController,
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter Number of pickup Service";
                                }
                              },
                              decoration: InputDecoration(
                                  // suffixIcon: Icon(Icons.hourglass_bottom),
                                  // suffix: const Icon(Icons.hourglass_top_outlined),
                                  labelText: "Pickup Location",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          color:
                                              colors.fntClr.withOpacity(0.5)))),
                            ),
                          ),
                        ),

                        // const Padding(
                        //   padding: EdgeInsets.only(left: 5.0),
                        //   child: Text(
                        //     "Pickup Service",
                        //     style: TextStyle(fontSize: 15, color: colors.fntClr),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 40,
                            child: TextFormField(
                              // controller: pickupController,
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter Number of pickup Service";
                                }
                              },
                              decoration: InputDecoration(
                                  // suffixIcon: Icon(Icons.hourglass_bottom),
                                  // suffix: const Icon(Icons.hourglass_top_outlined),
                                  // hintText: "Number of hours",
                                  labelText: "Drop  Location",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          color:
                                              colors.fntClr.withOpacity(0.5)))),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Payment Mode",textScaleFactor: 1.2,),
                            Text("   |",textScaleFactor: 2.5,),
                            Container(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.account_balance_wallet,color: colors.primary,),

                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black54),
                                  underline: Container(
                                    color: Colors.black54,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    }
                                    );
                                  },
                                  items: items.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                ),
                              ),
                            ),
                            Text("Wallet",textScaleFactor: 1.5, style: TextStyle(color: colors.primary),),


                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        AppBtn(
                          title: "Continue",
                          onPress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
                          },
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          fSize: 18,
                        )



                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
