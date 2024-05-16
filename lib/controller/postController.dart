import 'package:api/headers.dart';

class PostController extends ChangeNotifier {
  List<Post> allPost = [];

  PostController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allPost = await ApiHelper.apiHelper.getPostData();
    notifyListeners();
  }
}
