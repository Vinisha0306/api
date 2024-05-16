import 'package:api/controller/followerController.dart';
import 'package:api/headers.dart';

class FollowerApiPage extends StatelessWidget {
  const FollowerApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    FollowerController listnable = Provider.of<FollowerController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[12]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allFollowers.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allFollowers.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allFollowers[index].username),
              ),
      ),
    );
  }
}
