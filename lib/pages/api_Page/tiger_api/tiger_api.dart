import 'package:api/headers.dart';

import '../../../controller/tigerController.dart';

class TigerApiPage extends StatelessWidget {
  const TigerApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    TigerController listnable = Provider.of<TigerController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[24]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allTiger.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allTiger.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allTiger[index].name),
              ),
      ),
    );
  }
}
