import 'package:api/controller/GoogleNewsController.dart';
import 'package:api/controller/KeywordInsightController.dart';
import 'package:api/controller/yummlyController.dart';
import 'package:api/headers.dart';
import 'package:api/pages/api_Page/Address_api/address_api.dart';
import 'package:api/pages/api_Page/Amazon_api/Amazon_api.dart';
import 'package:api/pages/api_Page/BhagavadGita_api/BhagavadGita_api.dart';
import 'package:api/pages/api_Page/Burger_api/Burger_api.dart';
import 'package:api/pages/api_Page/Cake_api/Cake_api.dart';
import 'package:api/pages/api_Page/Courses_api/Courses_api.dart';
import 'package:api/pages/api_Page/Cricket_api/Cricket_api.dart';
import 'package:api/pages/api_Page/Desserts_api/Desserts_api.dart';
import 'package:api/pages/api_Page/Emoji_api/Emoji_api.dart';
import 'package:api/pages/api_Page/Freelancer_api/Freelancer_api.dart';
import 'package:api/pages/api_Page/GoogleNews_api/GoogleNews_api.dart';
import 'package:api/pages/api_Page/HealthNews_api/HealthNews_api.dart';
import 'package:api/pages/api_Page/Hospital_api/Hospital_api.dart';
import 'package:api/pages/api_Page/HousePlants_api/HousePlants_api.dart';
import 'package:api/pages/api_Page/Japanese_api/Japanese_api.dart';
import 'package:api/pages/api_Page/Jobs_api/Jobs_api.dart';
import 'package:api/pages/api_Page/KeywordInsight_api/KeywordInsight_api.dart';
import 'package:api/pages/api_Page/KoreanRestaurants_api/KoreanRestaurants_api.dart';
import 'package:api/pages/api_Page/Lion_api/Lion_api.dart';
import 'package:api/pages/api_Page/Marvel_api/marvel_api.dart';
import 'package:api/pages/api_Page/Phone_api/Phone_api.dart';
import 'package:api/pages/api_Page/Pizza_api/Pizza_api.dart';
import 'package:api/pages/api_Page/PlantsCategory_api/PlantsCategory_api.dart';
import 'package:api/pages/api_Page/PlayerCards_api/PlayerCards_api.dart';
import 'package:api/pages/api_Page/Quotes_api/Quotes_api.dart';
import 'package:api/pages/api_Page/Roblox_api/Roblox_api.dart';
import 'package:api/pages/api_Page/Weapons_api/Weapons_api.dart';
import 'package:api/pages/api_Page/Weather_api/Weather_api.dart';
import 'package:api/pages/api_Page/Yummly_api/Yummly_api.dart';
import 'package:api/pages/api_Page/car_api/car_api.dart';
import 'package:api/pages/api_Page/follower_api/follower_api.dart';
import 'package:api/pages/api_Page/holiDay_api/holiDay_api.dart';
import 'package:api/pages/api_Page/jokes_api/jokes_api.dart';
import 'package:api/pages/api_Page/language_api/language_api.dart';
import 'package:api/pages/api_Page/linkedIn_api/linkedIn_api.dart';
import 'package:api/pages/api_Page/monkey_api/monkey_api.dart';
import 'package:api/pages/api_Page/movie_api/movie_api.dart';
import 'package:api/pages/api_Page/post_api/post_api.dart';
import 'package:api/pages/api_Page/product_api/product_api.dart';
import 'package:api/pages/api_Page/recipe_api/recipe_api.dart';
import 'package:api/pages/api_Page/rhymeWord_api/rhymeWord_api.dart';
import 'package:api/pages/api_Page/sport_api/sport_api.dart';
import 'package:api/pages/api_Page/spotify_api/spotify_api.dart';
import 'package:api/pages/api_Page/tiger_api/tiger_api.dart';
import 'package:api/pages/api_Page/university_api/university_api.dart';
import 'package:api/pages/api_Page/user_api/user_api.dart';
import 'package:api/pages/api_Page/vehicle_api/vehicle_api.dart';
import 'package:api/pages/api_Page/workOut_api/workOut_api.dart';
import 'package:api/pages/api_Page/youtube_api/youtube_api.dart';
import 'package:api/pages/api_Page/food_api/food_api.dart';

class AppRoutes {
  static String homePage = '/';

  static List ApiOptions = [
    {
      'title': 'Product Api',
      'routes': 'product_api_page',
    },
    {
      'title': 'User Api',
      'routes': 'user_api_page',
    },
    {
      'title': 'Story Api',
      'routes': 'post_api_page',
    },
    {
      'title': 'Recipe Api',
      'routes': 'recipe_api_page',
    },
    {
      'title': 'University Api',
      'routes': 'university_api_page',
    },
    {
      'title': 'Food Api',
      'routes': 'food_api_page',
    },
    {
      'title': 'Cricket Api',
      'routes': 'cricket_api_page',
    },
    {
      'title': 'Youtube Api',
      'routes': 'youtube_api_page',
    },
    {
      'title': 'Spotify Api',
      'routes': 'spotify_api_page',
    },
    {
      'title': 'LinkedIn Api',
      'routes': 'linkedIn_api_page',
    },
    {
      'title': 'Language Api',
      'routes': 'language_api_page',
    },
    {
      'title': 'Movie Api',
      'routes': 'movie_api_page',
    },
    {
      'title': 'Follower Api',
      'routes': 'follower_api_page',
    },
    {
      'title': 'Quotes Api',
      'routes': 'quotes_api_page',
    },
    {
      'title': 'WorkOut Api',
      'routes': 'workout_api_page',
    },
    {
      'title': 'Address Api',
      'routes': 'address_api_page',
    },
    {
      'title': 'Jokes Api',
      'routes': 'jokes_api_page',
    },
    {
      'title': 'Lion Api',
      'routes': 'lion_api_page',
    },
    {
      'title': 'Emoji Api',
      'routes': 'emoji_api_page',
    },
    {
      'title': 'Holiday Api',
      'routes': 'holiday_api_page',
    },
    {
      'title': 'RhymeWord Api',
      'routes': 'rhymeWord_api_page',
    },
    {
      'title': 'Hospital Api',
      'routes': 'hospital_api_page',
    },
    {
      'title': 'Sport Players Api',
      'routes': 'sport_api_page',
    },
    {
      'title': 'Monkey Api',
      'routes': 'monkey_api_page',
    },
    {
      'title': 'Tiger Api',
      'routes': 'tiger_api_page',
    },
    {
      'title': 'Car Api',
      'routes': 'car_api_page',
    },
    {
      'title': 'Vehicle Api',
      'routes': 'vehicle_api_page',
    },
    {
      'title': 'Yummly Api',
      'routes': 'yummly_api_page',
    },
    {
      'title': 'Desserts Api',
      'routes': 'desserts_api_page',
    },
    {
      'title': 'Bhagavad Gita Api',
      'routes': 'bhagavadgita_api_page',
    },
    {
      'title': 'Courses Api',
      'routes': 'courses_api_page',
    },
    {
      'title': 'Marvel Api',
      'routes': 'marvel_api_page',
    },
    {
      'title': 'House Plants Api',
      'routes': 'houseplants_api_page',
    },
    {
      'title': 'Plants Category Api',
      'routes': 'plantscategory_api_page',
    },
    {
      'title': 'Cake Api',
      'routes': 'Cake_api_page',
    },
    {
      'title': 'Burger Api',
      'routes': 'burger_api_page',
    },
    {
      'title': 'Pizza Api',
      'routes': 'pizza_api_page',
    },
    {
      'title': 'Japanese Language Api',
      'routes': 'japanese_api_page',
    },
    {
      'title': 'Korean Restaurants Api',
      'routes': 'KoreanRestaurants_api_page',
    },
    {
      'title': 'Weapons Api',
      'routes': 'Weapons_api_page',
    },
    {
      'title': 'PlayerCards Api',
      'routes': 'PlayerCards_api_page',
    },
    {
      'title': 'Weather Api',
      'routes': 'Weather_api_page',
    },
    {
      'title': 'Jobs Api',
      'routes': 'jobs_api_page',
    },
    {
      'title': 'Freelancer Api',
      'routes': 'Freelancer_api_page',
    },
    {
      'title': 'Phone Api',
      'routes': 'phone_api_page',
    },
    {
      'title': 'Google News Api',
      'routes': 'GoogleNews_api_page',
    },
    {
      'title': 'Health News Api',
      'routes': 'HealthNews_api_page',
    },
    {
      'title': 'Keyword Insight Api',
      'routes': 'KeywordInsight_api_page',
    },
    {
      'title': 'Roblox Api',
      'routes': 'Roblox_api_page',
    },
    {
      'title': 'Amazon Api',
      'routes': 'Amazon_api_page',
    },
  ];

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.homePage: (context) => HomePage(),
    AppRoutes.ApiOptions[0]['routes']: (context) => ProductApiPage(),
    AppRoutes.ApiOptions[1]['routes']: (context) => UserApiPage(),
    AppRoutes.ApiOptions[2]['routes']: (context) => PostApiPage(),
    AppRoutes.ApiOptions[3]['routes']: (context) => RecipeApiPage(),
    AppRoutes.ApiOptions[4]['routes']: (context) => UniversityApiPage(),
    AppRoutes.ApiOptions[5]['routes']: (context) => FoodApiPage(),
    AppRoutes.ApiOptions[6]['routes']: (context) => CricketApiPage(),
    AppRoutes.ApiOptions[7]['routes']: (context) => YoutubeApiPage(),
    AppRoutes.ApiOptions[8]['routes']: (context) => SpotifyApiPage(),
    AppRoutes.ApiOptions[9]['routes']: (context) => LinkedInApiPage(),
    AppRoutes.ApiOptions[10]['routes']: (context) => LanguageApiPage(),
    AppRoutes.ApiOptions[11]['routes']: (context) => MovieApiPage(),
    AppRoutes.ApiOptions[12]['routes']: (context) => FollowerApiPage(),
    AppRoutes.ApiOptions[13]['routes']: (context) => QuotesApiPage(),
    AppRoutes.ApiOptions[14]['routes']: (context) => WorkOutApiPage(),
    AppRoutes.ApiOptions[15]['routes']: (context) => AddressApiPage(),
    AppRoutes.ApiOptions[16]['routes']: (context) => JokesApiPage(),
    AppRoutes.ApiOptions[17]['routes']: (context) => LionApiPage(),
    AppRoutes.ApiOptions[18]['routes']: (context) => EmojiApiPage(),
    AppRoutes.ApiOptions[19]['routes']: (context) => HoliDayApiPage(),
    AppRoutes.ApiOptions[20]['routes']: (context) => RhymeWordApiPage(),
    AppRoutes.ApiOptions[21]['routes']: (context) => HospitalApiPage(),
    AppRoutes.ApiOptions[22]['routes']: (context) => SportApiPage(),
    AppRoutes.ApiOptions[23]['routes']: (context) => MonkeyApiPage(),
    AppRoutes.ApiOptions[24]['routes']: (context) => TigerApiPage(),
    AppRoutes.ApiOptions[25]['routes']: (context) => CarApiPage(),
    AppRoutes.ApiOptions[26]['routes']: (context) => VehicleApiPage(),
    AppRoutes.ApiOptions[27]['routes']: (context) => YummlyApiPage(),
    AppRoutes.ApiOptions[28]['routes']: (context) => DessertsApiPage(),
    AppRoutes.ApiOptions[29]['routes']: (context) => BhagavadGitaApiPage(),
    AppRoutes.ApiOptions[30]['routes']: (context) => CoursesApiPage(),
    AppRoutes.ApiOptions[31]['routes']: (context) => MarvelApiPage(),
    AppRoutes.ApiOptions[32]['routes']: (context) => HousePlantsApiPage(),
    AppRoutes.ApiOptions[33]['routes']: (context) => PlantsCategoryApiPage(),
    AppRoutes.ApiOptions[34]['routes']: (context) => CakeApiPage(),
    AppRoutes.ApiOptions[35]['routes']: (context) => BurgerApiPage(),
    AppRoutes.ApiOptions[36]['routes']: (context) => PizzaApiPage(),
    AppRoutes.ApiOptions[37]['routes']: (context) => JapaneseApiPage(),
    AppRoutes.ApiOptions[38]['routes']: (context) => KoreanRestaurantsApiPage(),
    AppRoutes.ApiOptions[39]['routes']: (context) => WeaponsApiPage(),
    AppRoutes.ApiOptions[40]['routes']: (context) => PlayerCardsApiPage(),
    AppRoutes.ApiOptions[41]['routes']: (context) => WeatherApiPage(),
    AppRoutes.ApiOptions[42]['routes']: (context) => JobsApiPage(),
    AppRoutes.ApiOptions[43]['routes']: (context) => FreelancerApiPage(),
    AppRoutes.ApiOptions[44]['routes']: (context) => PhoneApiPage(),
    AppRoutes.ApiOptions[45]['routes']: (context) => GoogleNewsApiPage(),
    AppRoutes.ApiOptions[46]['routes']: (context) => HealthNewsApiPage(),
    AppRoutes.ApiOptions[47]['routes']: (context) => KeywordInsightApiPage(),
    AppRoutes.ApiOptions[48]['routes']: (context) => RobloxApiPage(),
    AppRoutes.ApiOptions[49]['routes']: (context) => AmazonApiPage(),
  };
}
