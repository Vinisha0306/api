import 'package:api/controller/HospitalController.dart';
import 'package:api/headers.dart';

class HospitalApiPage extends StatelessWidget {
  const HospitalApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    HospitalController listnable = Provider.of<HospitalController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[21]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allHospital.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allHospital.length,
                itemBuilder: (context, index) => Text(
                  listnable.allHospital[index].name,
                ),
              ),
      ),
    );
  }
}
