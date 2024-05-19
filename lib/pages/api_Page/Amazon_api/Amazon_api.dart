import 'package:api/controller/Amazon.dart';
import 'package:api/headers.dart';

class AmazonApiPage extends StatelessWidget {
  const AmazonApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    AmazonController listnable = Provider.of<AmazonController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[15]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allAmazon.products.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allAmazon.products.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allAmazon.products[index].productTitle),
                    Image(
                      image: NetworkImage(
                        listnable.allAmazon.products[index].productPhoto,
                      ),
                      height: 300,
                      width: 200,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
