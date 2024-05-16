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
                itemBuilder: (context, index) => Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Series"),
                          Spacer(),
                          Text(listnable.allCricket[index].series[0].name),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Date"),
                          Spacer(),
                          Text(listnable.allCricket[index].date),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
