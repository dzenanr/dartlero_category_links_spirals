import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

testModel() {
  CategoryLinksModel categoryLinksModel;
  group("Testing Model: ", () {
    setUp(() {
      categoryLinksModel = new CategoryLinksModel();
      categoryLinksModel.init();
      categories = categoryLinksModel.categories;
    });
    tearDown(() {
      categories.clear();
      expect(categories.isEmpty, isTrue);
    });
    test('Display model', () {
      model.display();
    });
  });
}

main() {
  testModel();
}

