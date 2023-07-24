import 'package:get/get.dart';

import '../../flavors.dart';
import '../local_state/local_state.dart';
import '../utils/utils.dart';

class AppBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    final localState = LocalState();
    try {
      await localState.init();
    } catch (e) {
      print(e);
    }
    Get.put(localState);

    final utils = Utils();
    await utils.init();
    Get.put(utils);
  }
}
