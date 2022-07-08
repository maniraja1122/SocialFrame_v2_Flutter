import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget with PreferredSizeWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Icon(Icons.mail_rounded),
        ),
      ],
      title: Text("Social Frame"),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
