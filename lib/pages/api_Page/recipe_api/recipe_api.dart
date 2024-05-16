import 'package:api/controller/recipeController.dart';
import 'package:api/headers.dart';

class RecipeApiPage extends StatelessWidget {
  const RecipeApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    RecipeController recipe = Provider.of<RecipeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[3]['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: recipe.allRecipe.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : PageView.builder(
                itemCount: recipe.allRecipe.length,
                itemBuilder: (context, index) => SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(recipe.allRecipe[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        recipe.allRecipe[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ingredients",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...List.generate(
                                recipe.allRecipe[index].ingredients.length,
                                (ind) => Text(
                                  recipe.allRecipe[index].ingredients[ind],
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Instructions",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...List.generate(
                                  recipe.allRecipe[index].instructions.length,
                                  (ind) => Text(
                                    recipe.allRecipe[index].instructions[ind],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
