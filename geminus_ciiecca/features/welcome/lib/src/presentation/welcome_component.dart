import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:welcome/src/presentation/widgets/survey_checkbox.dart';
import 'package:welcome/src/presentation/widgets/survey_header.dart';
import 'package:welcome/src/presentation/widgets/survey_invite.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: CiieccaOutlinedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SurveyHeader(),
              Divider(
                indent: size.width * .1,
                endIndent: size.width * .1,
              ),
              const SurveyInvite(),
              SurveyCheckbox(),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * .03),
                child: CiieccaTextButton(
                  label: "Comenzar",
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
