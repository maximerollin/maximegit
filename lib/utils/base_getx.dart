import 'dart:async';

import 'package:get/get.dart';

class BaseGetxController extends GetxController {
  final Map<String, StreamSubscription> _subscriptions = {};

  @override
  void onClose() {
    for (final subscription in _subscriptions.values) {
      subscription.cancel();
    }
    _subscriptions.clear();
    super.onClose();
  }

  void addStream({
    required String key,
    required StreamSubscription subscription,
  }) {
    final oldSubscription = _subscriptions[key];
    if (oldSubscription != null) {
      oldSubscription.cancel();
    }
    _subscriptions[key] = subscription;
  }
}