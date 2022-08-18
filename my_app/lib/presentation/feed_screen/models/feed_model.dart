import 'package:get/get.dart';
import 'feed_item_model.dart';

class FeedModel {
  RxList<FeedItemModel> feedItemList = RxList.filled(4, FeedItemModel());
}
