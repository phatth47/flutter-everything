import 'package:flutter_everything/dependency_injection/battery.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => Battery());
}
