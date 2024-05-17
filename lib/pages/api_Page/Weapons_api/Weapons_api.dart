import 'package:api/controller/WeaponsController.dart';
import 'package:api/headers.dart';

class WeaponsApiPage extends StatelessWidget {
  const WeaponsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    WeaponsController listnable = Provider.of<WeaponsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[39]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allWeapons.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allWeapons.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allWeapons[index].displayName),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allWeapons[index].displayIcon,
                          ),
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
