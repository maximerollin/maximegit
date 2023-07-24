import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Utils {
  late PackageInfo packageInfo;
  late BaseDeviceInfo deviceInfo;

  Future<void> init() async {
    packageInfo = await PackageInfo.fromPlatform();
    deviceInfo = await DeviceInfoPlugin().deviceInfo;
  }

  String getPlatform() {
    return kIsWeb ? 'web' : Platform.operatingSystem;
  }

  String getVersion() {
    return packageInfo.version;
  }

  double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  String? getDeviceModel() {
    if (kIsWeb) {
      final info = deviceInfo as WebBrowserInfo;
      return info.browserName.name;
    } else {
      if (Platform.isAndroid) {
        final info = deviceInfo as AndroidDeviceInfo;
        return info.model;
      } else if (Platform.isIOS) {
        final info = deviceInfo as IosDeviceInfo;
        return info.model;
      } else if (Platform.isLinux) {
        final info = deviceInfo as LinuxDeviceInfo;
        return info.name;
      } else if (Platform.isMacOS) {
        final info = deviceInfo as MacOsDeviceInfo;
        return info.model;
      } else if (Platform.isWindows) {
        final info = deviceInfo as WindowsDeviceInfo;
        return info.productName;
      }
    }
    return null;
  }
}