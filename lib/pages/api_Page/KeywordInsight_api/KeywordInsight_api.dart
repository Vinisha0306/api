import 'package:api/controller/KeywordInsightController.dart';
import 'package:api/headers.dart';

class KeywordInsightApiPage extends StatelessWidget {
  const KeywordInsightApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    KeywordInsightController listnable =
        Provider.of<KeywordInsightController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[47]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allKeywordInsight.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allKeywordInsight.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allKeywordInsight[index].text),
              ),
      ),
    );
  }
}
