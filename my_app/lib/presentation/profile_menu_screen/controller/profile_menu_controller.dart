import '/core/app_export.dart';
import 'package:my_app/presentation/profile_menu_screen/models/profile_menu_model.dart';

class ProfileMenuController extends GetxController {
  Rx<ProfileMenuModel> profileMenuModelObj = ProfileMenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
