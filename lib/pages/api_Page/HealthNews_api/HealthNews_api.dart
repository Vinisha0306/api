import 'package:api/controller/HealthNewsControoler.dart';
import 'package:api/headers.dart';

class HealthNewsApiPage extends StatelessWidget {
  const HealthNewsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    HealthNewsController listnable = Provider.of<HealthNewsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[46]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allHealthNews.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allHealthNews.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allHealthNews[index].title),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allHealthNews[index].images.thumbnail,
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
