import 'package:get_it/get_it.dart';
import 'package:photoplat/modules/home/domain/home_repo_implementation.dart';
import 'package:photoplat/modules/home/domain/home_repository.dart';
import 'package:photoplat/modules/home/home_provider.dart';

GetIt registery = GetIt.instance;

performInjection() {
  registery
      .registerLazySingleton<HomeRepository>(() => HomeRepoImplementation());
  registery.registerFactory(() => HomeProvider(homeRepo: registery()));
}
