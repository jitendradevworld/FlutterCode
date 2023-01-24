import '../transactions_page/widgets/transactions_item_widget.dart';
import 'controller/transactions_controller.dart';
import 'models/transactions_item_model.dart';
import 'models/transactions_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TransactionsPage extends StatelessWidget {
  TransactionsController controller =
      Get.put(TransactionsController(TransactionsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  285.00,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray10002,
                ),
              );
            },
            itemCount: controller
                .transactionsModelObj.value.transactionsItemList.length,
            itemBuilder: (context, index) {
              TransactionsItemModel model = controller
                  .transactionsModelObj.value.transactionsItemList[index];
              return TransactionsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
