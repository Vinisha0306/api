import 'package:api/controller/MarvelController.dart';
import 'package:api/headers.dart';

class MarvelApiPage extends StatelessWidget {
  const MarvelApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    marvelController listnable = Provider.of<marvelController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[31]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allMarvel.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allMarvel.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allMarvel[index].name),
              ),
      ),
    );
    ;
  }
}
