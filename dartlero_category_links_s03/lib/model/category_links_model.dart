part of dartlero_category_links;

class CategoryLinksModel extends ConceptModel {

  static final String category = 'Category';

  Map<String, ConceptEntities> newEntries() {
    var categories = new Categories();
    var map = new Map<String, ConceptEntities>();
    map[category] = categories;
    return map;
  }

  Categories get categories => getEntry(category);

  init() {
    var webCategory = new Category();
    webCategory.code = 'Web';
    webCategory.description = 'Web design and technologies.';
    categories.add(webCategory);

    var dartCategory = new Category();
    dartCategory.code = 'Dart';
    dartCategory.description = 'Web programming language, tools and how to.';

    categories.add(dartCategory);
  }

}
