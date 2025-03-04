import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_1/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', 
  preferRelativeImports: false, 
  asExtension: true, // Ensure this is true
)
Future<void> configureDependencies() async => getIt.$initGetIt();


@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @Named('BaseUrl')
  String get baseUrl => "https://eol122duf9sy4de.m.pipedream.net/";
}