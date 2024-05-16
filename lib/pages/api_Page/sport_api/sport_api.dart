import 'package:api/controller/sportController.dart';
import 'package:api/headers.dart';

class SportApiPage extends StatelessWidget {
  const SportApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    SportController listnable = Provider.of<SportController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[22]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allSport.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allSport.length,
                itemBuilder: (context, index) => Text(
                  listnable.allSport[index].firstName,
                ),
              ),
      ),
    );
  }
}
