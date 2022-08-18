import 'package:get/get.dart';
import 'listmo_item_model.dart';
import 'listicon_item_model.dart';

class CalendarModel {
  RxList<ListmoItemModel> listmoItemList = RxList.filled(6, ListmoItemModel());

  RxList<ListiconItemModel> listiconItemList = RxList.filled(4, ListiconItemModel());
}
