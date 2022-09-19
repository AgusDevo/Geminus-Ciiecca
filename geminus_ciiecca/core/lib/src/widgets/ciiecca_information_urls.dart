import 'package:flutter/material.dart';

class CiieccaInformationUrls extends StatelessWidget {
  final Set<String> _bulletPoints;
  const CiieccaInformationUrls({
    Key? key,
    required Set<String> bulletPoints,
  })  : _bulletPoints = bulletPoints,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_bulletPoints.isNotEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Accesos de protección en:\n",
          ),
          for (int i = 0; i < _bulletPoints.length; i++)
            Text(
              "•${_bulletPoints.elementAt(i)}",
            ),
        ],
      );
    } else {
      const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }
}
