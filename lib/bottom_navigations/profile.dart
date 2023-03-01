import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List listdata = [
    {"name": "Abc", "email": "abc@gmail.com", "orderStatus": 1},
    {"name": "def", "email": "def@gmail.com", "orderStatus": 2},
    {"name": "ghi", "email": "ghi@gmail.com", "orderStatus": 3},
    {"name": "jkl", "email": "jkl@gmail.com", "orderStatus": 1},
    {"name": "mno", "email": "mno@gmail.com", "orderStatus": 3}
  ];

  List tabdata = [
    {"id": 1, "type": "PENDING"},
    {"id": 2, "type": "SHIPPED"},
    {"id": 3, "type": "COMPLETED"},
    {"id": 4, "type": "ALL"}
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView(
                  children: const [
                    ListTile(
                      title: Text("abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
                ListView(
                  children: const [
                    ListTile(
                      title: Text("abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
                ListView(
                  children: const [
                    ListTile(
                      title: Text("abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
                ListView(
                  children: const [
                    ListTile(
                      title: Text("abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
