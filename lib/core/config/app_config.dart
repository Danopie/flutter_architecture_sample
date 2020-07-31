import 'package:primitive_type_parser/primitive_type_parser.dart';

enum Flavor { Development, Production }

class AppConfig {
  static AppConfig instance;
  factory AppConfig() => instance;

  final Flavor flavor;
  final String bannerTitle;
  final String api;

  AppConfig.fromJson(Map<String, dynamic> map, Flavor flavor)
      : bannerTitle = parseString(map["bannerTitle"]),
        api = parseString(map["api"]),
        flavor = flavor;

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['bannerTitle'] = bannerTitle;
    data['api'] = api;
    return data;
  }
}
