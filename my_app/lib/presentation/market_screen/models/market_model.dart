import 'package:get/get.dart';
import 'listrectanglethirty_item_model.dart';
import 'listrectanglethirty_four_item_model.dart';
import 'listrectanglethirty_eight_item_model.dart';

class MarketModel {
  RxList<ListrectanglethirtyItemModel> listrectanglethirtyItemList = RxList.filled(3, ListrectanglethirtyItemModel());

  RxList<ListrectanglethirtyFourItemModel> listrectanglethirtyFourItemList =
      RxList.filled(3, ListrectanglethirtyFourItemModel());

  RxList<ListrectanglethirtyEightItemModel> listrectanglethirtyEightItemList =
      RxList.filled(3, ListrectanglethirtyEightItemModel());
}
