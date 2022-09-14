import 'package:flutter/material.dart';

class SurveyHeader extends StatelessWidget {
  final String _welcomeTitleText;
  final String _welcomeBodyText;
  const SurveyHeader(
      {Key? key,
      required String welcomeTitleText,
      required String welcomeBodyText})
      : _welcomeTitleText = welcomeTitleText,
        _welcomeBodyText = welcomeBodyText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * .03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/images/lock.png",
            package: 'core',
          ),
          SizedBox(
            height: size.height * .016,
          ),
          Text(
            _welcomeTitleText,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: size.height * .016,
          ),
          Text(
            _welcomeBodyText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color.fromARGB(255, 132, 132, 132),
            ),
          ),
        ],
      ),
    );
  }
}
