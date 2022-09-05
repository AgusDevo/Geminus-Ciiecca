import 'package:flutter/material.dart';

abstract class CiieccaAppBar {
  static PreferredSizeWidget createAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(3.0),
          child: Container(
            color: Colors.grey.shade200,
            height: 2.0,
          )),
      centerTitle: false,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 20),
        child: Image.asset(
          "assets/images/ciiecca.png",
          package: 'core',
        ),
      ),
    );
  }
}
