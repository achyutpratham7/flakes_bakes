import 'package:flakes_bakes/screens/guest_screen.dart';
import 'package:flakes_bakes/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/custom_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController registername = TextEditingController();
  TextEditingController registeremail = TextEditingController();
  TextEditingController registerpassword = TextEditingController();
  TextEditingController registerconfirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        resizeToAvoidBottomInset: false,
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return Stack(
              fit: StackFit.loose,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/bc_top.png",
                        width: sizingInformation.localWidgetSize.width / 2)),
                Center(
                  child: Container(
                    width: width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              letterSpacing: 0.8),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        CustomTextField(
                          userPassword: registername,
                          prefixIcons: Icons.person_2_outlined,
                          hintText: 'Username',
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomTextField(
                          userPassword: registeremail,
                          prefixIcons: Icons.mail_outline_outlined,
                          hintText: 'Email address',
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomTextField(
                          userPassword: registerpassword,
                          prefixIcons: Icons.remove_red_eye_outlined,
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomTextField(
                          userPassword: registerconfirmpassword,
                          prefixIcons: Icons.remove_red_eye_outlined,
                          hintText: 'Confirm Password',
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(width * 0.9, 60),
                            backgroundColor: const Color(0xFF6A14D1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Wrap(
                          children: [
                            const Text(
                              'Already have an account? ',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => LoginScreen(),
                                    transition: Transition.cupertino);
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("assets/images/bc_bottom.png",
                        width:
                            sizingInformation.localWidgetSize.width / 2 + 25)),
              ],
            );
          },
        ));
  }
}
