import 'package:flutter/material.dart';

class CiiecaPaddedText extends StatelessWidget {
  const CiiecaPaddedText(String text,
      {Key? key, EdgeInsetsGeometry? padding, TextStyle? style})
      : _padding = padding ?? const EdgeInsets.all(0),
        _text = text,
        _style = style,
        super(key: key);
  final EdgeInsetsGeometry _padding;
  final String _text;
  final TextStyle? _style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Text(
        _text,
        style: _style,
      ),
    );
  }
}
