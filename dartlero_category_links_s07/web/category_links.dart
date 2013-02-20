import 'dart:html';
import 'dart:json';

import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

CategoryLinksModel categoryLinksModel;
Categories categories;

load() {
  String json = window.localStorage['dartlero_category_links'];
  if (json == null) {
    categoryLinksModel.init();
  } else {
    categories.fromJson(parse(json));
    if (categories.length == 0) {
      categoryLinksModel.init();
    }
  }
  categories.order();
}

save() {
  window.localStorage['dartlero_category_links'] =
      stringify(categories.toJson());
}

main() {
  categoryLinksModel = new CategoryLinksModel();
  categories = categoryLinksModel.categories;
  load();
}
