import 'package:api/headers.dart';
import 'package:api/modal/HousePlantsModal.dart';
import 'package:api/modal/JapaneseModal.dart';
import 'package:api/modal/PlantsCategoryModal.dart';
import 'package:api/modal/carModal.dart';
import 'package:api/modal/cricketModal.dart';
import 'package:api/modal/foodModal.dart';
import 'package:api/modal/holiDayModal.dart';
import 'package:api/modal/languageModal.dart';
import 'package:api/modal/monkeyModal.dart';
import 'package:api/modal/sportModal.dart';
import 'package:http/http.dart' as http;
import '../modal/BurgerModal.dart';
import '../modal/CakeModal.dart';
import '../modal/CoursesModal.dart';
import '../modal/DessertsModal.dart';
import '../modal/MarvelModal.dart';
import '../modal/YummlyModal.dart';
import '../modal/bhagavadGitaModal.dart';
import '../modal/emojiModal.dart';
import '../modal/followersModal.dart';
import '../modal/hospitalModal.dart';
import '../modal/jokesModal.dart';
import '../modal/linkedInModal.dart';
import '../modal/lionModal.dart';
import '../modal/movieModal.dart';
import '../modal/pizzaModal.dart';
import '../modal/quotesModal.dart';
import '../modal/recipeModal.dart';
import '../modal/spotifyModal.dart';
import '../modal/tigerModal.dart';
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
  String HospitalApi =
      "https://www.communitybenefitinsight.org/api/get_hospitals.php?state=NC";
  String SportApi =
      "https://live-golf-data.p.rapidapi.com/tournament?orgId=1&tournId=475&year=2024";
  String MonkeyApi = "https://api.api-ninjas.com/v1/animals?name=monkey";
  String TigerApi = "https://api.api-ninjas.com/v1/animals?name=tiger";
  String CarApi =
      "https://car-api2.p.rapidapi.com/api/models?sort=id&direction=asc&year=2020&verbose=yes";
  String VehicleApi =
      "https://car-api2.p.rapidapi.com/api/vehicle-attributes?attribute=bodies.type";
  String YummlyApi = "https://yummly2.p.rapidapi.com/categories/list";
  String DessertsApi = "https://beverages-and-desserts.p.rapidapi.com/desserts";
  String BhagavadGitaApi =
      "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18";
  String CoursesApi = "https://courses9.p.rapidapi.com/api/v6/website/labels";
  String MarvelApi =
      "https://marvel-heroic-api-unlock-the-mcu-legendary-characters.p.rapidapi.com/characters";
  String HousePlantsApi = "https://house-plants2.p.rapidapi.com/categories";
  String PlantsCategoryApi =
      "https://house-plants2.p.rapidapi.com/category/Fern";
  String cakeApi = "https://the-birthday-cake-db.p.rapidapi.com/";
  String BurgerApi = "https://burgers-hub.p.rapidapi.com/burgers";
  String PizzaApi = "https://pizza-and-desserts.p.rapidapi.com/pizzas";
  String JapaneseApi =
      "https://japanese-alphabet.p.rapidapi.com/v1.0/language?language=hiragana";

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
      List allData = jsonDecode(data['data']);
      List Data = allData[0];
      allFood = Data.map((e) => Food.fromJson(e)).toList();
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

  Future<List<Hospital>> getHospitalData() async {
    List<Hospital> allHospital = [];

    http.Response response = await http.get(
      Uri.parse(HospitalApi),
    );

    if (response.statusCode == 200) {
      List alldata = jsonDecode(response.body);
      allHospital = alldata.map((e) => Hospital.fromJson(e)).toList();
    }

    return allHospital;
  }

  Future<List<Sport>> getSportData() async {
    List<Sport> allSport = [];

    http.Response response = await http.get(Uri.parse(SportApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'live-golf-data.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['players'];
      allSport = allData.map((e) => Sport.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allSport;
  }

  Future<List<Monkey>> getMonkeyData() async {
    List<Monkey> allMonkey = [];

    http.Response response = await http.get(Uri.parse(MonkeyApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allMonkey = allData.map((e) => Monkey.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allMonkey;
  }

  Future<List<Tiger>> getTigerData() async {
    List<Tiger> allTiger = [];

    http.Response response = await http.get(Uri.parse(TigerApi),
        headers: {'X-Api-Key': 'L6IF6wn+cMJUqqt0JgtLgQ==vmH0ef1zZesBouE7'});

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allTiger = allData.map((e) => Tiger.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allTiger;
  }

  Future<List<Car>> getCarData() async {
    List<Car> allCar = [];

    http.Response response = await http.get(Uri.parse(CarApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'car-api2.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['data'];
      allCar = allData.map((e) => Car.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allCar;
  }

  Future<List> getVehicleData() async {
    List allVehicle = [];

    http.Response response = await http.get(Uri.parse(VehicleApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'car-api2.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      allVehicle = jsonDecode(response.body);
    }

    log(response.statusCode);

    return allVehicle;
  }

  Future<List<Desserts>> getDessertsData() async {
    List<Desserts> allDesserts = [];

    http.Response response = await http.get(Uri.parse(DessertsApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'beverages-and-desserts.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List alldata = jsonDecode(response.body);
      allDesserts = alldata.map((e) => Desserts.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allDesserts;
  }

  Future<List<Yummly>> getYummlyData() async {
    List<Yummly> allYummly = [];

    http.Response response = await http.get(Uri.parse(YummlyApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List alldata = data["browse-categories"];
      allYummly = alldata.map((e) => Yummly.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allYummly;
  }

  Future<List<BhagavadGita>> getBhagavadGitaData() async {
    List<BhagavadGita> allBhagavadGita = [];

    http.Response response =
        await http.get(Uri.parse(BhagavadGitaApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List alldata = jsonDecode(response.body);
      allBhagavadGita = alldata.map((e) => BhagavadGita.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allBhagavadGita;
  }

  Future<List<Courses>> getCoursesData() async {
    List<Courses> allCourses = [];

    http.Response response = await http.get(Uri.parse(CoursesApi), headers: {
      'Content-Type': 'application/json',
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'courses9.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List alldata = data['data'];
      allCourses = alldata.map((e) => Courses.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allCourses;
  }

  Future<List<Marvel>> getMarvelData() async {
    List<Marvel> allMarvel = [];

    http.Response response = await http.get(Uri.parse(MarvelApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host':
          'marvel-heroic-api-unlock-the-mcu-legendary-characters.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allMarvel = allData.map((e) => Marvel.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allMarvel;
  }

  Future<List<HousePlants>> getHousePlantsData() async {
    List<HousePlants> allHousePlants = [];

    http.Response response =
        await http.get(Uri.parse(HousePlantsApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'house-plants2.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allHousePlants = allData.map((e) => HousePlants.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allHousePlants;
  }

  Future<List<PlantsCategory>> getPlantsCategoryData() async {
    List<PlantsCategory> allPlantsCategory = [];

    http.Response response =
        await http.get(Uri.parse(PlantsCategoryApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'the-birthday-cake-db.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allPlantsCategory =
          allData.map((e) => PlantsCategory.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allPlantsCategory;
  }

  Future<List<Cake>> getCakeData() async {
    List<Cake> allCake = [];

    http.Response response = await http.get(Uri.parse(cakeApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'the-birthday-cake-db.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allCake = allData.map((e) => Cake.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allCake;
  }

  Future<List<Burger>> getBurgerData() async {
    List<Burger> allBurger = [];

    http.Response response = await http.get(Uri.parse(BurgerApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'burgers-hub.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allBurger = allData.map((e) => Burger.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allBurger;
  }

  Future<List<Pizza>> getPizzaData() async {
    List<Pizza> allPizza = [];

    http.Response response = await http.get(Uri.parse(PizzaApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'pizza-and-desserts.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List allData = jsonDecode(response.body);
      allPizza = allData.map((e) => Pizza.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allPizza;
  }

  Future<List<JapaneseLanguage>> getJapaneseData() async {
    List<JapaneseLanguage> allJapaneseLanguage = [];

    http.Response response = await http.get(Uri.parse(JapaneseApi), headers: {
      'X-RapidAPI-Key': '560709b69amsh10452e5f1d2a5e5p1a1a09jsn3d6027f9e6cb',
      'X-RapidAPI-Host': 'japanese-alphabet.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allDa = data['data'];
      Map all = allDa[0];
      List allData = all['content'];
      allJapaneseLanguage =
          allData.map((e) => JapaneseLanguage.fromJson(e)).toList();
    }

    log(response.statusCode);

    return allJapaneseLanguage;
  }
}
