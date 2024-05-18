import 'package:api/controller/PhoneController.dart';
import 'package:api/headers.dart';

class PhoneApiPage extends StatelessWidget {
  const PhoneApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhoneController listnable = Provider.of<PhoneController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[44]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allPhone.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allPhone.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allPhone[index].phoneName),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allPhone[index].imageUrl,
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
