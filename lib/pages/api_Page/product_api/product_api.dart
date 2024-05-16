import 'package:api/headers.dart';

class ProductApiPage extends StatelessWidget {
  const ProductApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController listnable = Provider.of<ProductController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[0]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allProduct.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allProduct.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              listnable.allProduct[index].thumbnail,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          listnable.allProduct[index].title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
