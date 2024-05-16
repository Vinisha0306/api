import 'package:api/controller/rhymeWordController.dart';
import 'package:api/headers.dart';

class RhymeWordApiPage extends StatelessWidget {
  const RhymeWordApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    RhymeWordController listnable = Provider.of<RhymeWordController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[20]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allRhymeWord.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allRhymeWord.length,
                itemBuilder: (context, index) => Text(
                  listnable.allRhymeWord[index],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
      ),
    );
  }
}
