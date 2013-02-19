import 'dart:uri';

import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

testCategoryLinks() {
  Category category;
  group("Testing Category Links: ", () {
    setUp(() {
      CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
      categoryLinksModel.init();
      Categories categories = categoryLinksModel.categories;
      category = categories.find('Dart');
    });
    tearDown(() {
      category.links.clear();
      expect(category.links.isEmpty, isTrue);
    });
    test('Add category link', () {
      var link = new Link();
      link.code = 'Dart Editor';
      link.url = new Uri.fromString('http://www.dartlang.org/docs/editor/');
      category.links.add(link);
      category.links.display('Add category link');
    });
  });
}

main() {
  testCategoryLinks();
}