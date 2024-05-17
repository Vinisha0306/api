import 'package:api/controller/BhagavadGitacOntroller.dart';
import 'package:api/controller/CoursesController.dart';
import 'package:api/controller/DessertsController.dart';
import 'package:api/controller/HospitalController.dart';
import 'package:api/controller/HousePlantsController.dart';
import 'package:api/controller/MarvelController.dart';
import 'package:api/controller/PlantsCategoryController.dart';
import 'package:api/controller/VehicleController.dart';
import 'package:api/controller/addressController.dart';
import 'package:api/controller/cricketController.dart';
import 'package:api/controller/emojiController.dart';
import 'package:api/controller/followerController.dart';
import 'package:api/controller/foodController.dart';
import 'package:api/controller/holiDayController.dart';
import 'package:api/controller/jokesController.dart';
import 'package:api/controller/languagesController.dart';
import 'package:api/controller/linkedInController.dart';
import 'package:api/controller/monkeyController.dart';
import 'package:api/controller/movieController.dart';
import 'package:api/controller/quotesController.dart';
import 'package:api/controller/recipeController.dart';
import 'package:api/controller/rhymeWordController.dart';
import 'package:api/controller/sportController.dart';
import 'package:api/controller/spotifyController.dart';
import 'package:api/controller/tigerController.dart';
import 'package:api/controller/universityController.dart';
import 'package:api/controller/workOutController.dart';
import 'package:api/controller/youtubeController.dart';
import 'package:api/controller/yummlyController.dart';

import 'controller/carController.dart';
import 'controller/lionController.dart';
import 'headers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductController()),
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (context) => PostController()),
        ChangeNotifierProvider(create: (context) => RecipeController()),
        ChangeNotifierProvider(create: (context) => UniversityController()),
        ChangeNotifierProvider(create: (context) => FoodController()),
        ChangeNotifierProvider(create: (context) => CricketController()),
        ChangeNotifierProvider(create: (context) => YoutubeController()),
        ChangeNotifierProvider(create: (context) => SpotifyController()),
        ChangeNotifierProvider(create: (context) => LinkedInController()),
        ChangeNotifierProvider(create: (context) => LanguagesController()),
        ChangeNotifierProvider(create: (context) => MovieController()),
        ChangeNotifierProvider(create: (context) => FollowerController()),
        ChangeNotifierProvider(create: (context) => QuotesController()),
        ChangeNotifierProvider(create: (context) => WorkOutController()),
        ChangeNotifierProvider(create: (context) => AddressController()),
        ChangeNotifierProvider(create: (context) => JokesController()),
        ChangeNotifierProvider(create: (context) => LionController()),
        ChangeNotifierProvider(create: (context) => EmojiController()),
        ChangeNotifierProvider(create: (context) => HoliDayController()),
        ChangeNotifierProvider(create: (context) => RhymeWordController()),
        ChangeNotifierProvider(create: (context) => HospitalController()),
        ChangeNotifierProvider(create: (context) => SportController()),
        ChangeNotifierProvider(create: (context) => MonkeyController()),
        ChangeNotifierProvider(create: (context) => TigerController()),
        ChangeNotifierProvider(create: (context) => CarController()),
        ChangeNotifierProvider(create: (context) => VehicleController()),
        ChangeNotifierProvider(create: (context) => YummlyController()),
        ChangeNotifierProvider(create: (context) => DessertsController()),
        ChangeNotifierProvider(create: (context) => BhagavadGitaController()),
        ChangeNotifierProvider(create: (context) => CoursesController()),
        ChangeNotifierProvider(create: (context) => marvelController()),
        ChangeNotifierProvider(create: (context) => HousePlantsController()),
        ChangeNotifierProvider(create: (context) => PlantsCategoryController()),
      ],
      child: const MyApp(),
    ),
  );
}
