import 'package:api/controller/GoogleNewsController.dart';
import 'package:api/headers.dart';

class GoogleNewsApiPage extends StatelessWidget {
  const GoogleNewsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleNewsController listnable = Provider.of<GoogleNewsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[45]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allGoogleNews.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allGoogleNews.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allGoogleNews[index].title),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allGoogleNews[index].images.thumbnail,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
