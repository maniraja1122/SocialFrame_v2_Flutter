import 'package:flutter/material.dart';
import 'package:socialframe/Repository/DBHelper.dart';
import 'package:socialframe/Screens/SearchUsers.dart';
import 'package:socialframe/Widgets/TopAppBar.dart';

import '../Routes.dart';
import '../Widgets/BottomNavigationBar.dart';
import '../Widgets/MyDrawer.dart';
import 'RegisterProcess/Login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TopAppBar(),
          drawer: MyDrawer(),
          body: TabBarView(
            children: [Login(),Login(),SearchUsers()],
          ),
          bottomNavigationBar:BottomNavBar()
        ));
  }
}
