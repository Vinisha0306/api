import 'package:api/controller/quotesController.dart';
import 'package:api/headers.dart';

class QuotesApiPage extends StatelessWidget {
  const QuotesApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesController listnable = Provider.of<QuotesController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[13]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allQuotes.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allQuotes.length,
                itemBuilder: (context, index) => Card(
                  child: Text(
                    listnable.allQuotes[index].quote,
                  ),
                ),
              ),
      ),
    );
  }
}
