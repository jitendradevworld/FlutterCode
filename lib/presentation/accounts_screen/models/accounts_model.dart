import 'package:get/get.dart';
import 'accounts_item_model.dart';
import 'listalarm_item_model.dart';
import 'listrefresh_item_model.dart';

class AccountsModel {
  RxList<AccountsItemModel> accountsItemList =
      RxList.filled(4, AccountsItemModel());

  RxList<ListalarmItemModel> listalarmItemList =
      RxList.filled(3, ListalarmItemModel());

  RxList<ListrefreshItemModel> listrefreshItemList =
      RxList.filled(4, ListrefreshItemModel());
}
