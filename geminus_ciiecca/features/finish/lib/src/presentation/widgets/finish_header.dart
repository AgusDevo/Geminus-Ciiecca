import 'package:flutter/material.dart';

class FinishHeader extends StatelessWidget {
  const FinishHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * .02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .1,
            width: size.width * .1,
            child: Image.asset(
              "assets/images/correct.png",
              package: 'core',
            ),
          ),
          SizedBox(
            height: size.height * .25,
            width: size.width * .25,
            child: Image.asset(
              "assets/images/congratulations.png",
              package: 'core',
            ),
          ),
        ],
      ),
    );
  }
}
