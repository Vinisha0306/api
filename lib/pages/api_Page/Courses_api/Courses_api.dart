import 'package:api/controller/CoursesController.dart';
import 'package:api/headers.dart';

class CoursesApiPage extends StatelessWidget {
  const CoursesApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    CoursesController listnable = Provider.of<CoursesController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[30]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allCourses.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allCourses.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allCourses[index].name),
              ),
      ),
    );
  }
}
