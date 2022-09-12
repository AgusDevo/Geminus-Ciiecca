import 'package:flutter/material.dart';

class CiieccaOutlinedBox extends StatelessWidget {
  final Widget _child;

  const CiieccaOutlinedBox({
    Key? key,
    required child,
  })  : _child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: _child,
    );
  }
}
