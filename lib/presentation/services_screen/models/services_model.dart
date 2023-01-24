import 'package:get/get.dart';
import 'listlocation_item_model.dart';
import 'listquestion_item_model.dart';

class ServicesModel {
  RxList<ListlocationItemModel> listlocationItemList =
      RxList.filled(3, ListlocationItemModel());

  RxList<ListquestionItemModel> listquestionItemList =
      RxList.filled(6, ListquestionItemModel());
}
