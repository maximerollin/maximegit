import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalState {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  LocalState();

  Future<LocalState> init() async {
    return this;
  }
}
