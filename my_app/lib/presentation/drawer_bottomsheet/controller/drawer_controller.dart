import '/core/app_export.dart';
import 'package:my_app/presentation/drawer_bottomsheet/models/drawer_model.dart';

class DrawerController extends GetxController {
  Rx<DrawerModel> drawerModelObj = DrawerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
