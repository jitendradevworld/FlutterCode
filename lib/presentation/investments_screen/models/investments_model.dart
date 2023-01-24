import 'package:get/get.dart';
import 'listcontrast_item_model.dart';
import 'listuser_item_model.dart';
import 'listslno_item_model.dart';

class InvestmentsModel {
  RxList<ListcontrastItemModel> listcontrastItemList =
      RxList.filled(3, ListcontrastItemModel());

  RxList<ListuserItemModel> listuserItemList =
      RxList.filled(3, ListuserItemModel());

  RxList<ListslnoItemModel> listslnoItemList =
      RxList.filled(6, ListslnoItemModel());
}
