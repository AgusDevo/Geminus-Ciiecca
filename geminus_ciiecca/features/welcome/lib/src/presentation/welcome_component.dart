import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:welcome/src/presentation/widgets/survey_checkbox.dart';
import 'package:welcome/src/presentation/widgets/survey_header.dart';
import 'package:welcome/src/presentation/widgets/survey_invite.dart';

class WelcomeComponent extends StatelessWidget {
  final String _welcomeTitleText;
  final String _welcomeBodyText;
  final String _acceptTermsText;
  final String _startButtonText;
  const WelcomeComponent({
    Key? key,
    required String welcomeTitleText,
    required String welcomeBodyText,
    required String acceptTermsText,
    required String startButtonText,
  })  : _welcomeTitleText = welcomeTitleText,
        _welcomeBodyText = welcomeBodyText,
        _acceptTermsText = acceptTermsText,
        _startButtonText = startButtonText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: CiieccaOutlinedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * .07,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SurveyHeader(
                welcomeBodyText: _welcomeBodyText,
                welcomeTitleText: _welcomeTitleText,
              ),
              Divider(
                indent: size.width * .01,
                endIndent: size.width * .01,
              ),
              const SurveyInvite(),
              SurveyCheckbox(
                acceptTermsText: _acceptTermsText,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * .03),
                child: CiieccaTextButton(
                  label: _startButtonText,
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    "/survey",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
