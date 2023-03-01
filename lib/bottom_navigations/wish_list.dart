import 'package:flutter/material.dart';

import 'custom_listtile.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 60,
                color: Colors.purple,
                child: ListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  title: const Center(
                      child: Text(
                    "homepage",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )),
                  trailing: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const CustomListTile(
                    title: 'ss',
                    leading: Icons.person_2,
                    subtitle: 'aa',
                    trailing: Icons.delete,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
