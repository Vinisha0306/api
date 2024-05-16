import 'package:api/headers.dart';

import '../../../controller/spotifyController.dart';

class SpotifyApiPage extends StatelessWidget {
  const SpotifyApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    SpotifyController listnable = Provider.of<SpotifyController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[8]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allSpotify.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allSpotify.length,
                itemBuilder: (context, index) => Card(
                  child: Text(listnable.allSpotify[index].data.name),
                ),
              ),
      ),
    );
  }
}
