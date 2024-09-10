

import 'package:nomo_app/core/services/flavor_services/flavor_config.dart';
import 'package:nomo_app/core/services/flavor_services/repositories/flavor.repository.dart';
import 'package:nomo_app/core/services/flavor_services/sources/flavor.source.dart';

class FlavorRepositoryImpl implements FlavorRepository {
  FlavorRepositoryImpl({required FlavorDataSource dataSource})
      : _dataSource = dataSource;

  final FlavorDataSource _dataSource;

  @override
  Future<FlavorConfig> loadAppConfiguration() async {
    final Map<String, dynamic>? apiResponse =
        await _dataSource.getAppConfiguration();

    return FlavorConfig(
        productName: apiResponse?['productName'] ?? "",
        environment: apiResponse?['environment'] ?? "",
        configuration: apiResponse?['configuration'] ?? {},
        translation: apiResponse?['translation'] ?? {},
        theme: apiResponse?['theme'] ?? {});
  }
}
