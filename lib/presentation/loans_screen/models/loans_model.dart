import 'package:get/get.dart';
import 'listuser1_item_model.dart';
import 'listprice_three_item_model.dart';

class LoansModel {
  RxList<Listuser1ItemModel> listuser1ItemList =
      RxList.filled(4, Listuser1ItemModel());

  RxList<ListpriceThreeItemModel> listpriceThreeItemList =
      RxList.filled(8, ListpriceThreeItemModel());
}
