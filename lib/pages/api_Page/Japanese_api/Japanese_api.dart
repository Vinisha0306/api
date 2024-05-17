import 'package:api/controller/japaneseController.dart';
import 'package:api/headers.dart';

class JapaneseApiPage extends StatelessWidget {
  const JapaneseApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    JapaneseController listnable = Provider.of<JapaneseController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[37]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allJapanese.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allJapanese.length,
                itemBuilder: (context, index) => Text(
                  listnable.allJapanese[index].japanese,
                ),
              ),
      ),
    );
  }
}
