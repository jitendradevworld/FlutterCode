import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/transactions_page/models/transactions_model.dart';

class TransactionsController extends GetxController {
  TransactionsController(this.transactionsModelObj);

  Rx<TransactionsModel> transactionsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
