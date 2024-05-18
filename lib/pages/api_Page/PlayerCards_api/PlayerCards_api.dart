import 'package:api/controller/PlayerCardsController.dart';
import 'package:api/headers.dart';

class PlayerCardsApiPage extends StatelessWidget {
  const PlayerCardsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerCardsController listnable =
        Provider.of<PlayerCardsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[40]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allPlayerCards.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allPlayerCards.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(listnable.allPlayerCards[index].displayName),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            listnable.allPlayerCards[index].displayIcon,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
