import 'package:flutter/material.dart';

class CiieccaTextButton extends StatelessWidget {
  final String _label;
  final VoidCallback _onTap;
  final TextStyle? _textStyle;
  final ButtonStyle? _buttonStyle;

  const CiieccaTextButton({
    Key? key,
    required String label,
    required VoidCallback onTap,
    ButtonStyle? buttonStyle,
    TextStyle? textStyle,
  })  : _label = label,
        _onTap = onTap,
        _textStyle = textStyle,
        _buttonStyle = buttonStyle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onTap,
      style: _buttonStyle,
      child: Text(
        _label,
        style: _textStyle,
      ),
    );
  }
}

/* 
class MainButton extends StatelessWidget {
  const MainButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: RawMaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        textStyle: const TextStyle(color: Colors.white),
        fillColor: Colors.orange.shade600,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
 */