import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

Categories categories;

main() {
  var categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  categories = categoryLinksModel.categories;
  categories.order();

  categories.internalList = toObservable(categories.internalList);
}

