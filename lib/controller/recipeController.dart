import 'package:api/headers.dart';

import '../modal/recipeModal.dart';

class RecipeController extends ChangeNotifier {
  List<Recipe> allRecipe = [];

  RecipeController() {
    loadData();
  }

  Future<void> loadData() async {
    allRecipe = await ApiHelper.apiHelper.getRecipeData();
    notifyListeners();
  }
}
