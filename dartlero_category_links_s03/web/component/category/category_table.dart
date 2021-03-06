import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryTable extends WebComponent {
  Categories categories;
  Category category;
  @observable
  bool showCategoryAdd = false;
  @observable
  bool showCategoryEdit = false;

  add() {
    ButtonElement addCategory = query('#addCategoryButton');
    if (addCategory.text == 'Show Add') {
      showCategoryAdd = true;
      addCategory.text = 'Hide Add';
    } else {
      showCategoryAdd = false;
      addCategory.text = 'Show Add';
    }
  }

  edit(category) {
    showCategoryEdit = true;
    this.category = category;
  }
}