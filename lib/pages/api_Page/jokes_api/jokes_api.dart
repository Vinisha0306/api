import 'package:api/controller/jokesController.dart';
import 'package:api/headers.dart';

class JokesApiPage extends StatelessWidget {
  const JokesApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    JokesController listnable = Provider.of<JokesController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[16]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allJokes.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allJokes.length,
                itemBuilder: (context, index) => Card(
                  child: Text(listnable.allJokes[index].joke),
                ),
              ),
      ),
    );
  }
}
