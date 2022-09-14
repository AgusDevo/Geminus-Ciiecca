import 'package:flutter/material.dart';

class CiieccaTextButton extends StatelessWidget {
  final String _label;
  final VoidCallback _onTap;

  const CiieccaTextButton({
    Key? key,
    required String label,
    required VoidCallback onTap,
    ButtonStyle? buttonStyle,
  })  : _label = label,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.amber.shade800),
      ),
      child: Text(
        _label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
