import 'package:api/headers.dart';

import '../../../controller/monkeyController.dart';

class MonkeyApiPage extends StatelessWidget {
  const MonkeyApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    MonkeyController listnable = Provider.of<MonkeyController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[23]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allMonkey.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allMonkey.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allMonkey[index].name),
              ),
      ),
    );
  }
}
