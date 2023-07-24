import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';
import 'package:collection/collection.dart';
import 'package:maximegit/custom/functions/functions.dart';
import 'package:maximegit/utils/base_getx.dart';

class HomePageController extends BaseGetxController {
  HomePageController({
    required this.context,
  });

  final BuildContext context;

  // WIDGET STATES

  // OBSERVABLES

  final _counter = Rx<int>(0);
  int get counter => _counter.value;
  void setCounter(int value) => _counter.value = value;

  Future<void> onPressedFab71ff() async {
    setCounter(int.parse(addition(
      num1: counter,
      num2: 1,
    )));
  }
}
