import 'package:api/controller/RobloxController.dart';
import 'package:api/headers.dart';

class RobloxApiPage extends StatelessWidget {
  const RobloxApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    RobloxController listnable = Provider.of<RobloxController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[48]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allRoblox.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allRoblox.length,
                itemBuilder: (context, index) => Text(
                  listnable.allRoblox[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
      ),
    );
  }
}
