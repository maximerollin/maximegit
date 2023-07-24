import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

/// A JSON converter for a non nullable [IconData]
class IconDataConverter implements JsonConverter<IconData, String> {
  const IconDataConverter();

  @override
  IconData fromJson(String key) {
    final points = key.split('/');
    final codePoint = int.tryParse(points.firstOrNull ?? '');

    if (codePoint == null) return IconData(0xf706, fontFamily: 'MaterialIcons');

    final fontFamily = points.length > 1 ? points[1] : null;
    final fontPackage = points.length > 2 ? points[2] : null;
    final third = points.length > 3 ? points[3] : null;
    final matchTextDirection = third != null ? true : false;

    return IconData(
      codePoint,
      fontFamily: fontFamily,
      fontPackage: fontPackage,
      matchTextDirection: matchTextDirection,
    );
  }

  @override
  String toJson(IconData icon) {
    return '${icon.codePoint}${icon.fontFamily == null ? null : '/${icon.fontFamily}'}${icon.fontPackage == null ? null : '/${icon.fontPackage}${icon.matchTextDirection == false ? null : '/${icon.matchTextDirection}'}'}';
  }
}

class NullableIconDataConverter implements JsonConverter<IconData?, String?> {
  const NullableIconDataConverter();

  @override
  IconData? fromJson(String? key) {
    if (key == null) return null;
    final points = key.split('/');
    final codePoint = int.tryParse(points.firstOrNull ?? '');

    if (codePoint == null) return IconData(0xf706, fontFamily: 'MaterialIcons');

    final fontFamily = points.length > 1 ? points[1] : null;
    final fontPackage = points.length > 2 ? points[2] : null;
    final third = points.length > 3 ? points[3] : null;
    final matchTextDirection = third != null ? true : false;

    return IconData(
      codePoint,
      fontFamily: fontFamily,
      fontPackage: fontPackage,
      matchTextDirection: matchTextDirection,
    );
  }

  @override
  String? toJson(IconData? icon) {
    if (icon == null) return null;
    return '${icon.codePoint}${icon.fontFamily == null ? null : '/${icon.fontFamily}'}${icon.fontPackage == null ? null : '/${icon.fontPackage}${icon.matchTextDirection == false ? null : '/${icon.matchTextDirection}'}'}';
  }
}
