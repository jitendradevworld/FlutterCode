import 'package:get/get.dart';
import 'transactions_item_model.dart';

class TransactionsModel {
  RxList<TransactionsItemModel> transactionsItemList =
      RxList.filled(5, TransactionsItemModel());
}
