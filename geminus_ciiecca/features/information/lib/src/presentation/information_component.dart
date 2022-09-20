import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:information/src/data/providers/info_index_provider.dart';
import 'package:information/src/presentation/widgets/information_presentation.dart';

class InformationComponent extends ConsumerWidget {
  const InformationComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentIndex = ref.watch(infoIndex);
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
              Image.asset(
                "assets/images/lock.png",
                package: 'core',
              ),
              Consumer(
                builder: (context, ref, child) {
                  return Container(
                    child: _infoBoxes[currentIndex],
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * .03),
                child: CiieccaTextButton(
                    label: "Siguiente",
                    onTap: () {
                      currentIndex++;
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<InformationPresentation> _infoBoxes = [
  InformationPresentation(
    titleText: 'TITULO TEXT1',
    bodyText: 'BODY TEXT1',
    bulletPoints: const {},
  ),
  InformationPresentation(
    titleText: 'TITULO TEXT2',
    bodyText: 'BODY TEXT2',
    bulletPoints: const {},
  ),
  InformationPresentation(
    titleText: 'TITULO TEXT3',
    bodyText: 'BODY TEXT3',
    bulletPoints: const {},
  ),
  InformationPresentation(
    titleText: 'TITULO TEXT4',
    bodyText: 'BODY TEXT4',
    bulletPoints: const {},
  ),
  InformationPresentation(
    titleText: 'TITULO TEXT5',
    bodyText: 'BODY TEXT5',
    bulletPoints: const {},
  ),
];
