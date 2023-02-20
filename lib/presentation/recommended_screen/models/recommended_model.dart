import 'package:get/get.dart';
import 'recommended_item_model.dart';

class RecommendedModel {
  RxList<RecommendedItemModel> recommendedItemList =
      RxList.generate(6, (index) => RecommendedItemModel());
}
