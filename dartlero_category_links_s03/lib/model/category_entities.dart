part of dartlero_category_links;

class Category extends ConceptEntity<Category> {

  String description;

  Category newEntity() => new Category();

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    description: ${description}\n'
           '  }\n';
  }

  bool get onProgramming =>
      description.contains('programming') ? true : false;

}

class Categories extends ConceptEntities<Category> {

  Categories newEntities() => new Categories();
  Category newEntity() => new Category();

}
