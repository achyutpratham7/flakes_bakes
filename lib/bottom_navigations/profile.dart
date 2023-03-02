import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  Map selectedTab = {};

  List listdata = [
    {"name": "Abc", "email": "abc@gmail.com", "orderStatus": 1},
    {"name": "def", "email": "def@gmail.com", "orderStatus": 2},
    {"name": "ghi", "email": "ghi@gmail.com", "orderStatus": 3},
    {"name": "jkl", "email": "jkl@gmail.com", "orderStatus": 1},
    {"name": "mno", "email": "mno@gmail.com", "orderStatus": 4}
  ];

  List tabdata = [
    {"id": 1, "type": "ALL"},
    {"id": 2, "type": "PENDING"},
    {"id": 3, "type": "SHIPPED"},
    {"id": 4, "type": "COMPLETED"},
  ];

  List findMatch(int id) {
    var found = listdata.where((element) => element['orderStatus'] == id);
    return found.toList();
  }

  @override
  void initState() {
    /// SHOW ALL ON DEFAULT
    selectedTab.addAll(tabdata[0]);

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
                onTap: (v) {
                  /// COLLECT SELECTED TAB DATA
                  selectedTab.addAll(tabdata[v]);
                  setState(() {});
                },
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.red,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: tabdata
                    .map(
                      (element) => Tab(
                        text: element['type'].toString(),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: tabdata
                  .map(
                    (e) => Column(
                      children: findMatch(selectedTab['id'])
                          .map((e) => ListTile(
                                title: Text(e['name'].toString()),
                                subtitle: Text(e['email'].toString()),
                                leading: CircleAvatar(
                                  child: Text(e['orderStatus'].toString()),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      )),
    );
  }
}
