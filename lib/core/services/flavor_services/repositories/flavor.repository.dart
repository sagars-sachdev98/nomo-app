import 'package:nomo_app/core/services/flavor_services/flavor_config.dart';

abstract class FlavorRepository {
  Future<FlavorConfig> loadAppConfiguration();
}