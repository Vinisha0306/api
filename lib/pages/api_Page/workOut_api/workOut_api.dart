import 'package:api/controller/workOutController.dart';
import 'package:api/headers.dart';

class WorkOutApiPage extends StatelessWidget {
  const WorkOutApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    WorkOutController listnable = Provider.of<WorkOutController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[14]['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allWorkOut.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allWorkOut.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allWorkOut[index].workOut),
              ),
      ),
    );
  }
}
