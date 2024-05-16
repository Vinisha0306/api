import 'package:api/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: AppRoutes.ApiOptions.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.ApiOptions[index]['routes']);
          },
          child: Container(
            height: 70,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade700,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              AppRoutes.ApiOptions[index]['title'],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
