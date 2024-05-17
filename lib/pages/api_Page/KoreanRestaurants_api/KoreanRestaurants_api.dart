import 'package:api/controller/KoreanRestaurantsController.dart';
import 'package:api/headers.dart';

class KoreanRestaurantsApiPage extends StatelessWidget {
  const KoreanRestaurantsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    KoreanRestaurantsController listnable =
        Provider.of<KoreanRestaurantsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[38]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allKoreanRestaurants.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allKoreanRestaurants.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allKoreanRestaurants[index].restaurantname),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allKoreanRestaurants[index].mainImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
