import 'package:get/get.dart';
import 'listbalance_item_model.dart';
import 'listvideocamera_item_model.dart';

class HomeModel {
  RxList<ListbalanceItemModel> listbalanceItemList =
      RxList.filled(2, ListbalanceItemModel());

  RxList<ListvideocameraItemModel> listvideocameraItemList =
      RxList.filled(3, ListvideocameraItemModel());
}
