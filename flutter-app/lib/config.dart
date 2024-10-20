import 'package:flutter/foundation.dart';

class Config {
  static String get apiUrl {
    return kReleaseMode
      ? 'https://salaty-api.obrtlik.cz/graphql'
      : 'http://192.168.0.38:5000/graphql';
  }
}
