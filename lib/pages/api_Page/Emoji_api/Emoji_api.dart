import 'package:api/controller/emojiController.dart';
import 'package:api/headers.dart';

class EmojiApiPage extends StatelessWidget {
  const EmojiApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    EmojiController listnable = Provider.of<EmojiController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[18]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allEmoji.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allEmoji.length,
                itemBuilder: (context, index) => Text(
                  listnable.allEmoji[index].character,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
      ),
    );
  }
}
