import 'package:get/get.dart';
import 'explore_item_model.dart';

class ExploreModel {
  RxList<ExploreItemModel> exploreItemList =
      RxList.generate(2, (index) => ExploreItemModel());
}
