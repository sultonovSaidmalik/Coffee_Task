import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../blocs/home_bloc/home_bloc.dart';
import '../common/repositories/product_repository.dart';
import 'apis.dart';
import 'services/dio_service.dart';


final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  /// network
  final dio = Dio();
  final networkService = DioService(dio: dio);

  locator.registerLazySingleton<Network>(() {
    networkService.configuration(Apis.baseUrl);
    return networkService;
  });




  //Repositories
  locator.registerSingleton<ProductRepository>(ProductRepositoryImpl(client: locator()));
  // Blocs
  locator.registerFactory(() => HomeBloc(locator()));
}