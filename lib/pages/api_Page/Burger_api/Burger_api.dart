import 'package:api/controller/BurgerController.dart';
import 'package:api/headers.dart';

class BurgerApiPage extends StatelessWidget {
  const BurgerApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    BurgerController listnable = Provider.of<BurgerController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[35]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allBurger.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allBurger.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allBurger[index].name),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allBurger[index].images[0].sm ?? "",
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
