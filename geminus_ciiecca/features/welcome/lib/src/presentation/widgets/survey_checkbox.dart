import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SurveyCheckbox extends StatefulWidget {
  final String _acceptTermsText;

  const SurveyCheckbox({
    Key? key,
    required String acceptTermsText,
  })  : _acceptTermsText = acceptTermsText,
        super(key: key);

  @override
  State<SurveyCheckbox> createState() => _SurveyCheckboxState();
}

class _SurveyCheckboxState extends State<SurveyCheckbox> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          child: Checkbox(
            value: agree,
            onChanged: (value) {
              setState(
                () {
                  agree = value ?? false;
                },
              );
            },
          ),
        ),
        TextButton(
          onPressed: () {
            CiieccaPopUp.showTerms(context);
          },
          child: Text(
            widget._acceptTermsText,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              color: Color.fromARGB(
                100,
                50,
                51,
                114,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
