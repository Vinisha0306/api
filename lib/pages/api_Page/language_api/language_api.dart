import 'package:api/controller/languagesController.dart';
import 'package:api/headers.dart';

class LanguageApiPage extends StatelessWidget {
  const LanguageApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    LanguagesController listnable = Provider.of<LanguagesController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[10]['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allLanguage.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allLanguage.length,
                itemBuilder: (context, index) => Card(
                  child: Text(listnable.allLanguage[index].language),
                ),
              ),
      ),
    );
  }
}
