import 'package:flutter/material.dart';

class CiieccaIconButton extends StatelessWidget {
  final String _label;
  final VoidCallback _onTap;
  final dynamic _icon;

  const CiieccaIconButton({
    Key? key,
    required String label,
    required VoidCallback onTap,
    required dynamic icon,
    ButtonStyle? buttonStyle,
  })  : _label = label,
        _onTap = onTap,
        _icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
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
      icon: _icon,
      label: Text(
        _label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
