import 'package:flutter_architecture_sample/config/app_config.dart';

class EnvironmentConfig {

  static const _flavor = String.fromEnvironment("DEFINE_FLAVOR");
  static Flavor get flavor {
    if (_flavor == "dev")
      return Flavor.Development;
    else
      return Flavor.Production;
  }

}
