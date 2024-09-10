class FlavorConfig {
  /// Name of Product
  final String productName;

  /// Product Enviornment
  final String enviornment;

  /// api configuration json
  final Map<String, dynamic> configuration;

  /// translation json
  final Map<String, dynamic> translation;

  /// theme json
  final Map<String, dynamic> theme;

  /// Instance of FlavorConfig
  static FlavorConfig? _instance;

  FlavorConfig._internal(this.productName, this.enviornment,
      this.configuration, this.translation, this.theme);

  static FlavorConfig? get instance {
    return _instance;
  }

  factory FlavorConfig({
    required String productName,
    required String environment,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> translation,
    required Map<String, dynamic> theme,
  }) {
    _instance ??= FlavorConfig._internal(
        productName, environment, configuration, translation, theme);

    return _instance!;
  }
}
