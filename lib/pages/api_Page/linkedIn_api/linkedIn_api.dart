import 'package:api/controller/linkedInController.dart';
import 'package:api/headers.dart';

class LinkedInApiPage extends StatelessWidget {
  const LinkedInApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    LinkedInController listnable = Provider.of<LinkedInController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[9]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allLinkedIn.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allLinkedIn.length,
                itemBuilder: (context, index) => Card(
                  child: Text(
                    listnable.allLinkedIn[index].author.firstName,
                  ),
                ),
              ),
      ),
    );
  }
}
