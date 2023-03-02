import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

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
  void initState() {
    var tabdata;
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.red,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: tabdata
                    .map((Type) => Tab(
                          text: Type.toString(),
                        ))
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: const [
                    ListTile(
                      title: Text("Abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    ListTile(
                      title: Text("Abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    ListTile(
                      title: Text("Abc"),
                      subtitle: Text("abc@gmail.com"),
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    ListTile(
                      title: Text("Abc"),
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
