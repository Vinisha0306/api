import 'package:api/controller/yummlyController.dart';
import 'package:api/headers.dart';

class YummlyApiPage extends StatelessWidget {
  const YummlyApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    YummlyController listnable = Provider.of<YummlyController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[27]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allYummly.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allYummly.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(
                      listnable.allYummly[index].display.displayName,
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allYummly[index].display.categoryImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
