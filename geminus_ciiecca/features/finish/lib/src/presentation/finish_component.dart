import 'package:finish/src/presentation/widgets/finish_body_text.dart';
import 'package:finish/src/presentation/widgets/finish_buttons.dart';
import 'package:finish/src/presentation/widgets/finish_header.dart';
import 'package:finish/src/presentation/widgets/finish_header_text.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

class FinishComponent extends StatelessWidget {
  const FinishComponent({
    Key? key,
  }) : super(key: key);

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
              const FinishHeader(),
              const FinishHeaderText(),
              const FinishBodyText(),
              Divider(
                indent: size.width * .01,
                endIndent: size.width * .01,
              ),
              const FinishButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
