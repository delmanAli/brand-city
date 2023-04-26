import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  Future<StorageService> init() async {
    await GetStorage.init();
    return this;
  }

  write(String key, dynamic value) {
    GetStorage().write(key, value);
  }

  read(String key) {
    if (GetStorage().read(key) == null) {
      return '';
    } else {
      return GetStorage().read(key);
    }
    // return GetStorage().read(key);
  }

  void remove(String key) {
    GetStorage().remove(key);
  }

  void erase() {
    GetStorage().erase();
  }

  void writeIfNull(String key, dynamic value) {
    GetStorage().writeIfNull(key, value);
  }
}
