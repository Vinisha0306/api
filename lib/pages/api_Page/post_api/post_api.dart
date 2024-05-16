import 'package:api/headers.dart';

class PostApiPage extends StatelessWidget {
  const PostApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostController unmutable = Provider.of<PostController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Api"),
      ),
      body: unmutable.allPost.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: unmutable.allPost.length,
              itemBuilder: (context, index) => Card(
                child: ExpansionTile(
                  leading: CircleAvatar(
                    child: Text("${unmutable.allPost[index].id}"),
                  ),
                  title: Text(
                    unmutable.allPost[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(unmutable.allPost[index].body),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
