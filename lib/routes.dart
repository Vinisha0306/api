import 'package:api/controller/holiDayController.dart';
import 'package:api/headers.dart';
import 'package:api/pages/api_Page/Address_api/address_api.dart';
import 'package:api/pages/api_Page/Cricket_api/Cricket_api.dart';
import 'package:api/pages/api_Page/Emoji_api/Emoji_api.dart';
import 'package:api/pages/api_Page/Lion_api/Lion_api.dart';
import 'package:api/pages/api_Page/Quotes_api/Quotes_api.dart';
import 'package:api/pages/api_Page/follower_api/follower_api.dart';
import 'package:api/pages/api_Page/holiDay_api/holiDay_api.dart';
import 'package:api/pages/api_Page/jokes_api/jokes_api.dart';
import 'package:api/pages/api_Page/language_api/language_api.dart';
import 'package:api/pages/api_Page/linkedIn_api/linkedIn_api.dart';
import 'package:api/pages/api_Page/movie_api/movie_api.dart';
import 'package:api/pages/api_Page/post_api/post_api.dart';
import 'package:api/pages/api_Page/product_api/product_api.dart';
import 'package:api/pages/api_Page/recipe_api/recipe_api.dart';
import 'package:api/pages/api_Page/rhymeWord_api/rhymeWord_api.dart';
import 'package:api/pages/api_Page/spotify_api/spotify_api.dart';
import 'package:api/pages/api_Page/university_api/university_api.dart';
import 'package:api/pages/api_Page/user_api/user_api.dart';
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
      'title': 'Post Api',
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
  };
}
