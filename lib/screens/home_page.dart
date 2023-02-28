import 'package:flakes_bakes/bottom_navigations/home_view.dart';
import 'package:flakes_bakes/bottom_navigations/profile.dart';
import 'package:flakes_bakes/bottom_navigations/shopping_cart.dart';
import 'package:flakes_bakes/bottom_navigations/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List pages = [
    const HomeView(),
    const WishList(),
    const ShoppingCart(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
          color: const Color(0xFFEFEFEF),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: selectedIndex == 0
                        ? BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6A14D1))
                        : BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                    child: Center(
                        child: selectedIndex == 0
                            ? Icon(Icons.home_filled)
                            : Icon(
                                Icons.home_filled,
                                size: 35,
                                color: Color(0xff828595),
                              ))),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: selectedIndex == 1
                        ? BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6A14D1))
                        : BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                    child: Center(
                        child: selectedIndex == 1
                            ? Icon(Icons.favorite)
                            : Icon(
                                Icons.favorite_border,
                                size: 35,
                                color: Color(0xff828595),
                              ))),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: selectedIndex == 2
                        ? BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6A14D1))
                        : BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                    child: Center(
                        child: selectedIndex == 2
                            ? Icon(Icons.shopping_bag)
                            : Icon(
                                Icons.shopping_bag_outlined,
                                size: 35,
                                color: Color(0xff828595),
                              ))),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: selectedIndex == 3
                        ? BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6A14D1))
                        : BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                    child: Center(
                        child: selectedIndex == 3
                            ? Icon(Icons.person)
                            : Icon(
                                Icons.person_2_outlined,
                                size: 35,
                                color: Color(0xff828595),
                              ))),
              ),
            ],
          ))),
    );
  }
}
