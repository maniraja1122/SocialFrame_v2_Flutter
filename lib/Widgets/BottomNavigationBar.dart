import 'package:flutter/material.dart';



class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TabBar(unselectedLabelColor: Colors.grey,indicatorWeight:  5,labelColor: Colors.blue ,
      tabs: [
        Tab(
          icon: Icon(Icons.home_filled),
        ),
        Tab(
          icon: Icon(Icons.notifications_rounded),
        ),
        Tab(
          icon: Icon(Icons.search_rounded),
        )
      ],
    );
  }
}
