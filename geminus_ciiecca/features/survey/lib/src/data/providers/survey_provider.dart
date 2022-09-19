import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:survey/src/domain/entities/survey.dart';

final survey = StateProvider<Survey>((_) => Survey([]));
