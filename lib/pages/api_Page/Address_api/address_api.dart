import 'package:api/controller/addressController.dart';
import 'package:api/headers.dart';

class AddressApiPage extends StatelessWidget {
  const AddressApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddressController listnable = Provider.of<AddressController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[15]['title'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allAddress.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allAddress.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allAddress[index].address.city),
              ),
      ),
    );
  }
}
