import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:task147/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env){
  getIt.init(environment: env);
}