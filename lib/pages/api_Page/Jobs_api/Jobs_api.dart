import 'package:api/controller/JobsController.dart';
import 'package:api/headers.dart';

class JobsApiPage extends StatelessWidget {
  const JobsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    JobsController listnable = Provider.of<JobsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[42]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allJobs.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allJobs.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text("${listnable.allJobs[index].title}"),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Company Name : ${listnable.allJobs[index].company}"),
                    const SizedBox(
                      width: 10,
                    ),
                    Divider(),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
