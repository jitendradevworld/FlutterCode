import 'package:get/get.dart';
import 'listbalance2_item_model.dart';
import 'listellipsethirtythree_item_model.dart';
import 'listfile_item_model.dart';
import 'listlock_item_model.dart';

class CreditCardsModel {
  RxList<Listbalance2ItemModel> listbalance2ItemList =
      RxList.filled(3, Listbalance2ItemModel());

  RxList<ListellipsethirtythreeItemModel> listellipsethirtythreeItemList =
      RxList.filled(2, ListellipsethirtythreeItemModel());

  RxList<ListfileItemModel> listfileItemList =
      RxList.filled(3, ListfileItemModel());

  RxList<ListlockItemModel> listlockItemList =
      RxList.filled(4, ListlockItemModel());
}
