import 'package:api/controller/youtubeController.dart';
import 'package:api/headers.dart';

class YoutubeApiPage extends StatelessWidget {
  const YoutubeApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubeController listnable = Provider.of<YoutubeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[7]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allYoutube.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allYoutube.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allYoutube[index].video.author.title),
              ),
      ),
    );
  }
}
