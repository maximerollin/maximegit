import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';
import 'package:collection/collection.dart';
import 'package:maximegit/custom/functions/functions.dart';
import 'home_page_controller.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomePageController>(
      init: HomePageController(
        context: context,
      ),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Counter App',
            ),
            actions: [],
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Text(
                    controller.counter.toString(),
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add_rounded,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            onPressed: () {
              controller.onPressedFab71ff();
            },
          ),
        );
      },
    );
  }
}
