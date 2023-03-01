import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  String dropdownValue = 'Dog';

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
            SizedBox(
              height: 50,
            ),
            DropdownButton(
                items: dropdowndata.map((dynamic items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(dropdowndata.),
                  );
                }).toList(),
                onChanged: (dynamic newvalue) {
                  setState(() {
                    dropdownValue = newvalue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
