import 'package:api/headers.dart';

class UserApiPage extends StatelessWidget {
  const UserApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserController mutable = Provider.of<UserController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("User Api"),
      ),
      body: mutable.allUser.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: mutable.allUser.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
                child: index % 2 == 0
                    ? Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  mutable.allUser[index].image,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              mutable.allUser[index].firstName,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          const Spacer(),
                          Text(
                            mutable.allUser[index].firstName,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  mutable.allUser[index].image,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
    );
  }
}
