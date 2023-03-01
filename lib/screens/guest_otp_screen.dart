import 'package:flakes_bakes/bottom_navigations/home_view.dart';
import 'package:flakes_bakes/screens/home_page.dart';
import 'package:flakes_bakes/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GuestOtpScreen extends StatefulWidget {
  const GuestOtpScreen({super.key});

  @override
  State<GuestOtpScreen> createState() => _GuestOtpScreenState();
}

class _GuestOtpScreenState extends State<GuestOtpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      resizeToAvoidBottomInset: false,
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/images/otp_bg.png"),
                    SafeArea(
                      child: Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          const Center(
                              child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "Verification Code",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Confirmation',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6A14D1)),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Please Type the verification code Sent to +12154528414 ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(100),
                  disabledBorderColor: Color(0xFF512DA8),
                  fillColor: Color(0xFF512DA8),
                  fieldWidth: 60,
                  filled: true,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    // showDialog(
                    //     context: context,
                    //     builder: (context){
                    //       return AlertDialog(
                    //         title: Text("Verification Code"),
                    //         content: Text('Code entered is $verificationCode'),
                    //       );
                    //     }
                    // );
                  }, // end onSubmit
                ),
                SizedBox(height: height * 0.05),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "RESEND CODE >",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                SizedBox(height: height * 0.05),
                TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(width * 0.9, 60),
                      backgroundColor: const Color(0xFF6A14D1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 15)),
                  onPressed: () {
                    Get.to(() => HomePage(), transition: Transition.cupertino);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'VERIFY',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
