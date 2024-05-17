import 'package:api/controller/PizzaController.dart';
import 'package:api/headers.dart';

class PizzaApiPage extends StatelessWidget {
  const PizzaApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    PizzaController listnable = Provider.of<PizzaController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[36]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allPizza.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allPizza.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allPizza[index].name),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allPizza[index].img,
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
