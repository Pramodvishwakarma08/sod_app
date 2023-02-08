import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:therapy/Api/api_service.dart';
// import 'package:therapy/Helper/colors.dart';
// import 'package:therapy/Helper/session.dart';
// import 'package:therapy/Helper/string.dart';
// import 'package:therapy/Helper/widgets.dart';
// import 'package:therapy/Model/send_otp_model.dart';
// import 'package:therapy/view/buttons/appButton.dart';
// import 'package:therapy/view/verification.dart';
// import 'package:http/http.dart' as http;

import '../../Helper/colors.dart';
import '../../Helper/widgets.dart';
import '../buttons/appButton.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController mobileController = TextEditingController();
  String? otp;
  String msg = "";
  bool? status;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final mobileController = TextEditingController();
  final ccodeController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? mobile, id, countrycode, countryName, mobileno;
  bool _isNetworkAvail = true;
  Animation? buttonSqueezeanimation;
  AnimationController? buttonController;

  // void validateAndSubmit() async {
  //   if (validateAndSave()) {
  //     _playAnimation();
  //     // checkNetwork();
  //   }
  // }

  // Future<Null> _playAnimation() async {
  //   try {
  //     await buttonController!.forward();
  //   } on TickerCanceled {}
  // }


  // bool validateAndSave() {
  //   final form = _formkey.currentState!;
  //   form.save();
  //   if (form.validate()) {
  //     return true;
  //   }
  //   return false;
  // }


  // Future<SendOtpModel?> sendOtp() async {
  //   var request = http.MultipartRequest('POST', Uri.parse('$sendOtpUrl'));
  //   request.fields.addAll({
  //     'mobile': mobileController.text.toString(),
  //   });
  //
  //   print(request);
  //   print(request.fields);
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //
  //     final str = await response.stream.bytesToString();
  //     var results = SendOtpModel.fromJson(json.decode(str));
  //     setState((){
  //       otp = results.otp;
  //       msg = results.message!;
  //       status = results.status;
  //     });
  //     print("checking result here ${results.message} and ${results.status}");
  //     if(results.status == true){
  //       Fluttertoast.showToast(msg:"${results.message}");
  //        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Verification(
  //          mobile: mobileController.text.toString(),
  //          otp: otp.toString(),
  //        )));
  //
  //     } else {
  //       setSnackbar("${results.message}", context);
  //       Fluttertoast.showToast(msg:"Invalid Mobile Number!");
  //     }
  //
  //
  //     return SendOtpModel.fromJson(json.decode(str));
  //   }
  //   else {
  //     Fluttertoast.showToast(msg:"Invalid Mobile Number!");
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/login2.png',
               ),
                  ),
                ),
                const SizedBox(height: 30,),
                titleText("Login", context, 26),
                const SizedBox(height: 30,),
                // subTitleText("Please enter the details below to continue", context, 14),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 10, right: 10),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  colors.textFieldClr
                      //Theme.of(context).colorScheme.gray,
                    ),
                    child: TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: const InputDecoration(
                        counterText: "",
                        contentPadding: EdgeInsets.only(left: 15, top: 5),
                        hintText: "Enter Mobile No.",
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 20),
                  child: AppBtn(
                    title: "Get Otp",
                    onPress: () {
                     // sendOtp();

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Verification()));

                    },
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    fSize: 18,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}