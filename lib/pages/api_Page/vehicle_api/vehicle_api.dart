import 'package:api/controller/VehicleController.dart';
import 'package:api/headers.dart';

class VehicleApiPage extends StatelessWidget {
  const VehicleApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    VehicleController listnable = Provider.of<VehicleController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[26]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allVehicle.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allVehicle.length,
                itemBuilder: (context, index) => Text(
                  listnable.allVehicle[index],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
      ),
    );
  }
}
