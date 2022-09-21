import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:information/src/data/providers/info_index_provider.dart';
import 'package:information/src/presentation/widgets/information_presentation.dart';

abstract class InfoNavigationHelper {
  static void onLastInfo(
    BuildContext context,
    WidgetRef ref,
    List<InformationPresentation> questions,
  ) {
    final currentIndex = ref.watch(infoIndex);
    if (currentIndex < 4) {
      ref.watch(infoIndex.notifier).state++;
    }
    if (currentIndex == 4) {
      while (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
      ref.watch(infoIndex.notifier).state = 0;
      return;
    }
  }
}
