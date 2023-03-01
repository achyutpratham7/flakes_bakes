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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flakes Bakes",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Transform.translate(
            offset: const Offset(-10, 0),
            child: const Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const CustomListTile(
            title: 'ss',
            leading: Icons.abc,
            subtitle: 'aa',
            trailing: Icons.delete,
          );
        },
      ),
    );
  }
}
