import 'package:api/controller/DessertsController.dart';
import 'package:api/headers.dart';

class DessertsApiPage extends StatelessWidget {
  const DessertsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    DessertsController listnable = Provider.of<DessertsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[28]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allDesserts.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allDesserts.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allDesserts[index].name),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allDesserts[index].img[0].sm ?? "",
                          ),
                          fit: BoxFit.cover,
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
    ;
  }
}
