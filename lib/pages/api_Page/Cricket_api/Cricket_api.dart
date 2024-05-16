import 'package:api/controller/cricketController.dart';
import 'package:api/headers.dart';

class CricketApiPage extends StatelessWidget {
  const CricketApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    CricketController listnable = Provider.of<CricketController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[6]['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allCricket.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allCricket.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Series",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(listnable.allCricket[index].series[0].name),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Date",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(listnable.allCricket[index].date),
                      ],
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
