import 'package:api/controller/lionController.dart';
import 'package:api/headers.dart';

class LionApiPage extends StatelessWidget {
  const LionApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    LionController listnable = Provider.of<LionController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[17]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allLion.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allLion.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allLion[index].name),
              ),
      ),
    );
  }
}
