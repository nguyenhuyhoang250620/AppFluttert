import 'package:get/get.dart';
import 'listbackground_item_model.dart';
import 'listbackground_three_item_model.dart';
import 'listicon1_item_model.dart';

class ExpensesModel {
  RxList<ListbackgroundItemModel> listbackgroundItemList = RxList.filled(3, ListbackgroundItemModel());

  RxList<ListbackgroundThreeItemModel> listbackgroundThreeItemList = RxList.filled(5, ListbackgroundThreeItemModel());

  RxList<Listicon1ItemModel> listicon1ItemList = RxList.filled(6, Listicon1ItemModel());
}
