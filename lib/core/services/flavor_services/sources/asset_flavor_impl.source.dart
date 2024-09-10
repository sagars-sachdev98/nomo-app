import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nomo_app/core/services/flavor_services/sources/flavor.source.dart';

class AssetFlavorDataSource implements FlavorDataSource {
  @override
  Future<Map<String, dynamic>> getAppConfiguration() async {
    // Load main configuration for loading specific product info & env
    var mainConfigStr =
        await rootBundle.loadString("assets/configuration.json");
    final mainConfig = jsonDecode(mainConfigStr);

    String folderPath = "assets/tenants/${mainConfig["tenant"]}";

    // Load API configuration
    var appConfigStr =
        await rootBundle.loadString("$folderPath/api_configuration.json");
    final appConfig = jsonDecode(appConfigStr);

    // Load translation configuration
    var translationConfigStr =
        await rootBundle.loadString("$folderPath/languages/en.json");
    final translationConfig = jsonDecode(translationConfigStr);

    // Load theme configuration
    var themeConfigStr =
        await rootBundle.loadString("$folderPath/json/theme.json");
    final themeConfig = jsonDecode(themeConfigStr);

    var config = {
      "productName": mainConfig["tenant"],
      "environment": mainConfig["environment"],
      "configuration": appConfig[mainConfig["environment"]],
      "translation": translationConfig,
      "theme": themeConfig,
    };

    return config;
  }
}
