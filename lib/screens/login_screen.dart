import 'package:flakes_bakes/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/custom_textformfield.dart';
import 'guest_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        resizeToAvoidBottomInset: false,
        body: ResponsiveBuilder(builder: (context, sizingInformation) {
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
                      Center(
                        child: Image.asset(
                          "assets/images/logo_long.png",
                          width: width * 0.5,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      CustomTextField(
                        userPassword: userName,
                        prefixIcons: Icons.person_2_outlined,
                        hintText: 'Jimmy Vanderson',
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CustomTextField(
                        userPassword: userPassword,
                        prefixIcons: Icons.remove_red_eye_outlined,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff540174),
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              endIndent: 30,
                              color: Color(0xff540174),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Or Login With",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF540174)),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              indent: 30,
                              color: Color(0xff540174),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 5,
                              shadowColor: Colors.black45,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Image.asset(
                                  "assets/images/google_logo.png",
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              elevation: 5,
                              shadowColor: Colors.black45,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Image.asset(
                                  "assets/images/facebook_logo.png",
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Wrap(
                        children: [
                          const Text(
                            'Don???t have an account? ',
                            style: TextStyle(
                              color: Color(0xff000000),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => RegisterScreen(),
                                  transition: Transition.cupertino);
                            },
                            child: const Text(
                              'Sign up Now',
                              style: TextStyle(
                                color: Color(0xff000000),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            fixedSize: Size(width * 0.9, 60),
                            backgroundColor: const Color(0xFF6A14D1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15)),
                        onPressed: () {
                          Get.to(() => GuestScreen(),
                              transition: Transition.cupertino);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'CONTINUE AS GUEST',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/images/bc_bottom.png",
                      width: sizingInformation.localWidgetSize.width / 2 + 25)),
            ],
          );
        }));
  }
}
