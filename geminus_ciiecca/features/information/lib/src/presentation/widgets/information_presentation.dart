import 'package:core/core.dart';
import 'package:flutter/material.dart';

class InformationPresentation extends StatelessWidget {
  final String _titleText;
  final String _bodyText;
  final Set<String> _bulletPoints;
  InformationPresentation({
    Key? key,
    required String titleText,
    required String bodyText,
    required Set<String>? bulletPoints,
  })  : _titleText = titleText,
        _bodyText = bodyText,
        _bulletPoints = bulletPoints ?? {},
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          _titleText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          _bodyText,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 132, 132, 132),
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        Divider(
          indent: size.width * .01,
          endIndent: size.width * .01,
        ),
        CiieccaInformationUrls(bulletPoints: _bulletPoints),
      ],
    );
  }
}
