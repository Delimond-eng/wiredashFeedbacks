import 'package:get_it/get_it.dart';
import 'package:learn/src/models/counter.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerSingleton<Counter>(Counter());
}
