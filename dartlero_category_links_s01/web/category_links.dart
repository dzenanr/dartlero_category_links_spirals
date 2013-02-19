import 'dart:html';
import 'dart:json';

import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

Categories categories;

main() {
  var categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  categories = categoryLinksModel.categories;
  categories.order();
}

