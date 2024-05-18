import 'package:api/controller/FreelancerController.dart';
import 'package:api/headers.dart';

class FreelancerApiPage extends StatelessWidget {
  const FreelancerApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    FreelancerController listnable = Provider.of<FreelancerController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[43]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allFreelancer.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allFreelancer.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(
                      listnable.allFreelancer[index].projectTitle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
