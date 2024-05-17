import 'package:api/controller/BhagavadGitacOntroller.dart';
import 'package:api/headers.dart';

class BhagavadGitaApiPage extends StatelessWidget {
  const BhagavadGitaApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    BhagavadGitaController lisnable =
        Provider.of<BhagavadGitaController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[29]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: lisnable.allBhagavadGita.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: lisnable.allBhagavadGita.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(
                      lisnable.allBhagavadGita[index].slug,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(lisnable.allBhagavadGita[index].chapterSummary),
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
