import 'package:flutter/material.dart';
import 'package:socialframe/Repository/DBHelper.dart';
import 'package:socialframe/Widgets/TopAppBar.dart';

import '../../Routes.dart';
import '../../Widgets/BottomNavigationBar.dart';
import 'Login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TopAppBar(),
          drawer: Drawer(),
          body: TabBarView(
            children: [Login(),Login(),Login()],
          ),
          bottomNavigationBar:BottomNavBar()
        ));
  }
}
