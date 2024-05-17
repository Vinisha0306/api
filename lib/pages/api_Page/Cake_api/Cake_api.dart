import 'package:api/controller/cakeController.dart';
import 'package:api/headers.dart';

class CakeApiPage extends StatelessWidget {
  const CakeApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    CakeController listnable = Provider.of<CakeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[34]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allCake.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allCake.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allCake[index].title),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allCake[index].image,
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
