import '/core/app_export.dart';
import 'package:my_app/presentation/calendar_screen/models/calendar_model.dart';

class CalendarController extends GetxController {
  Rx<CalendarModel> calendarModelObj = CalendarModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
