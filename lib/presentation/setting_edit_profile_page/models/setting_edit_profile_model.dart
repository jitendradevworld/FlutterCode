import 'package:get/get.dart';
import 'package:jitendra_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';

class SettingEditProfileModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;
}
