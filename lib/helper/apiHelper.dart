import 'package:api/headers.dart';
import 'package:api/modal/cricketModal.dart';
import 'package:api/modal/foodModal.dart';
import 'package:api/modal/holiDayModal.dart';
import 'package:api/modal/languageModal.dart';
import 'package:http/http.dart' as http;
import '../modal/emojiModal.dart';
import '../modal/followersModal.dart';
import '../modal/jokesModal.dart';
import '../modal/linkedInModal.dart';
import '../modal/lionModal.dart';
import '../modal/movieModal.dart';
import '../modal/quotesModal.dart';
import '../modal/recipeModal.dart';
import '../modal/spotifyModal.dart';
import '../modal/universityModal.dart';
import '../modal/workOutModal.dart';
import '../modal/youtubeModal.dart';
import '../modal/addressModal.dart';

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  String productApi = "https://dummyjson.com/products";
  String userApi = "https://dummyjson.com/users";
  String postApi = "https://dummyjson.com/posts";
  String recipeApi = "https://dummyjson.com/recipes";
  String foodApi =
      "https://www.foodchow.com/api/FoodChowWD/AllRestaurantsWDOfferApp?Country=India&city=Surat&area=&longitude=&latitude=&deliveryMethod=&cuisineId=2,1&clientid=&startlimit=0&endlimit=1000&onoffflag";
  String universityApi =
      "https://Universities-List-API.proxy-production.allthingsdev.co/search";
  String cricketApi =
      "https://cricbuzz-cricket.p.rapidapi.com/series/v1/international";
  String youtubeApi =
      "https://youtube-data8.p.rapidapi.com/playlist/videos/?id=PLcirGkCPmbmFeQ1sm4wFciF03D_EroIfr&hl=en&gl=US";
  String spotifyApi = "https://spotify23.p.rapidapi.com/search/?q=q&type=multi";
  String linkedInApi =
      "https://linkedin-api8.p.rapidapi.com/get-profile-posts?username=adamselipsky";
  String languageApi =
      "https://google-translate1.p.rapidapi.com/language/translate/v2/languages";
  String MovieApi = "https://moviesdatabase.p.rapidapi.com/titles/x/upcoming";
  String FollowersApi =
      "https://instagram-scraper-api2.p.rapidapi.com/v1/followers?username_or_id_or_url=mrbeast";
  String QuotesApi = "https://dummyjson.com/quotes";
  String WorkOutApi =
      "https://work-out-api1.p.rapidapi.com/search?Muscles=biceps";
  String AddressApi =
      "https://zillow56.p.rapidapi.com/agent_active_listings?zuid=X1-ZUz0nmomozy2o9_9bpwk";
  String JokesApi = "https://api.api-ninjas.com/v1/jokes?limit=50";
  String LionApi = "https://api.api-ninjas.com/v1/animals?name=lion";
  String EmojiApi = "https://api.api-ninjas.com/v1/emoji?name=all";
  String HoliDayApi =
      "https://api.api-ninjas.com/v1/holidays?country=CA&year=2024&type=public_holiday";
  String RhymeWordApi = "https://api.api-ninjas.com/v1/rhyme?word=rhyme";

  Future<List<Product>> getProductData() async {
    List<Product> allProduct = [];

    http.Response response = await http.get(Uri.parse(productApi));

    if (response.statusCode == 200) {
      log(response.statusCode);
      Map data = jsonDecode(response.body);
      List alldata = data['products'];
      allProduct = alldata.map((e) => Product.fromJson(e)).toList();
    }
    log(response.statusCode);

    return allProduct;
  }

  Future<List<User>> getUserData() async {
    List<User> allUser = [];

    http.Response response = await http.get(Uri.parse(userApi));

    if (response.statusCode == 200) {
      log(response.statusCode);
      Map data = jsonDecode(response.body);
      List alldata = data['users'];
      allUser = alldata.map((e) => User.fromJson(e)).toList();
    }
    log(response.statusCode);

    return allUser;
  }

  Future<List<Post>> getPostData() async {
    List<Post> allPost = [];

    http.Response response = await http.get(Uri.parse(postApi));

    if (response.statusCode == 200) {
      log(response.statusCode);
      Map data = jsonDecode(response.body);
      List alldata = data['posts'];
      allPost = alldata.map((e) => Post.fromJson(e)).toList();
    }
    log(response.statusCode);

    return allPost;
  }

  Future<List<Recipe>> getRecipeData() async {
    List<Recipe> allRecipe = [];

    http.Response response = await http.get(
      Uri.parse(recipeApi),
    );

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List alldata = data['recipes'];
      allRecipe = alldata.map((e) => Recipe.fromJson(e)).toList();
    }

    return allRecipe;
  }

  Future<List<University>> getUniversityData() async {
    List<University> allUniversity = [];

    http.Response response = await http.get(Uri.parse(universityApi), headers: {
      "x-apihub-key": "fhbLv-FwjnOoRPA2MYYUXe9JErFg5c5rrcBaRAK-SrwKzIWQ8A",
      "x-apihub-host": "Universities-List-API.allthingsdev.co"
    });

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      allUniversity = data.map((e) => University.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allUniversity;
  }

  Future<List<Food>> getFoodData() async {
    List<Food> allFood = [];

    http.Response response = await http.get(Uri.parse(foodApi));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['data'];
      allFood = allData.map((e) => Food.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allFood;
  }

  Future<List<Cricket>> getCricketData() async {
    List<Cricket> allCricket = [];

    http.Response response = await http.get(Uri.parse(cricketApi), headers: {
      "X-RapidAPI-Key": "560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb",
      "X-RapidAPI-Host": "cricbuzz-cricket.p.rapidapi.com"
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['seriesMapProto'];
      allCricket = allData.map((e) => Cricket.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allCricket;
  }

  Future<List<Youtube>> getYoutubeData() async {
    List<Youtube> allYoutube = [];

    http.Response response = await http.get(Uri.parse(youtubeApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'youtube-data8.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['contents'];
      allYoutube = allData.map((e) => Youtube.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allYoutube;
  }

  Future<List<Spotify>> getSpotifyData() async {
    List<Spotify> allSpotify = [];

    http.Response response = await http.get(Uri.parse(spotifyApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      Map allda = data['albums'];
      List allData = allda['items'];
      allSpotify = allData.map((e) => Spotify.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allSpotify;
  }

  Future<List<LinkedIn>> getLinkedInData() async {
    List<LinkedIn> allLinkedIn = [];

    http.Response response = await http.get(Uri.parse(linkedInApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'linkedin-api8.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['data'];
      allLinkedIn = allData.map((e) => LinkedIn.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allLinkedIn;
  }

  Future<List<Language>> getlanguageData() async {
    List<Language> allLanguage = [];

    http.Response response = await http.get(Uri.parse(languageApi), headers: {
      'Accept-Encoding': 'application/gzip',
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      print("print ${response.statusCode}");

      Map data = jsonDecode(response.body);
      Map allda = data['data'];
      List allData = allda['languages'];
      allLanguage = allData.map((e) => Language.fromJson(e)).toList();
    }

    return allLanguage;
  }

  Future<List<Movie>> getMovieData() async {
    List<Movie> allMovie = [];

    http.Response response = await http.get(Uri.parse(MovieApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'moviesdatabase.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['results'];
      allMovie = allData.map((e) => Movie.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allMovie;
  }

  Future<List<Followers>> getFollowersData() async {
    List<Followers> allFollowers = [];

    http.Response response = await http.get(Uri.parse(FollowersApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'instagram-scraper-api2.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      Map allda = data['data'];
      List allData = allda['items'];
      allFollowers = allData.map((e) => Followers.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allFollowers;
  }

  Future<List<Quotes>> getQuotesData() async {
    List<Quotes> allQuotes = [];

    http.Response response = await http.get(Uri.parse(QuotesApi));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['quotes'];
      allQuotes = allData.map((e) => Quotes.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allQuotes;
  }

  Future<List<WorkOut>> getWorkOutData() async {
    List<WorkOut> allWorkOut = [];

    http.Response response = await http.get(Uri.parse(WorkOutApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'work-out-api1.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allWorkOut = allData.map((e) => WorkOut.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allWorkOut;
  }

  Future<List<Location>> getAddressData() async {
    List<Location> allAddress = [];

    http.Response response = await http.get(Uri.parse(AddressApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'zillow56.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allAddress = allData.map((e) => Location.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allAddress;
  }

  Future<List<Jokes>> getJokesData() async {
    List<Jokes> allJokes = [];

    http.Response response = await http.get(Uri.parse(JokesApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allJokes = allData.map((e) => Jokes.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allJokes;
  }

  Future<List<Lion>> getLionData() async {
    List<Lion> allLion = [];

    http.Response response = await http.get(Uri.parse(LionApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allLion = allData.map((e) => Lion.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allLion;
  }

  Future<List<Emoji>> getEmojiData() async {
    List<Emoji> allEmoji = [];

    http.Response response = await http.get(Uri.parse(EmojiApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allEmoji = allData.map((e) => Emoji.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allEmoji;
  }

  Future<List<HoliDay>> getHolidayData() async {
    List<HoliDay> allHoliDay = [];

    http.Response response = await http.get(Uri.parse(HoliDayApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allHoliDay = allData.map((e) => HoliDay.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allHoliDay;
  }

  Future<List> getRhymeWordData() async {
    List allRhymeWord = [];

    http.Response response = await http.get(Uri.parse(RhymeWordApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      allRhymeWord = jsonDecode(response.body);
    }

    log(response.statusCode);

    return allRhymeWord;
  }
}