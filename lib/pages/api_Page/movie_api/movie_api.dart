import 'package:api/controller/movieController.dart';
import 'package:api/headers.dart';

class MovieApiPage extends StatelessWidget {
  const MovieApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieController listnable = Provider.of<MovieController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[11]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allMovie.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allMovie.length,
                itemBuilder: (context, index) => Text(
                  listnable.allMovie[index].titleText.text,
                ),
              ),
      ),
    );
  }
}
