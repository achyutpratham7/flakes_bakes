import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  Map dropdownSelected = {};
  List dropdowndata = [
    {"id": 1, "name": "Abc", "age": 20, "email": "abc@gmail.com"},
    {"id": 2, "name": "def", "age": 42, "email": "def@gmail.com"},
    {"id": 3, "name": "geh", "age": 28, "email": "geh@gmail.com"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            DropdownButton(
              hint: const Text("Select"),
              value: dropdownSelected.isNotEmpty ? dropdownSelected : null,
              items: dropdowndata.map((dynamic items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items['name'].toString()),
                );
              }).toList(),
              onChanged: (dynamic newvalue) {
                setState(
                  () {
                    dropdownSelected = newvalue;
                    debugPrint(dropdownSelected.toString());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
