import 'package:http/http.dart' as http;

class ApiHelper {
   String baseUrl = "https://dummyapi.io/data/v1/";


   static final ApiHelper _singleHelper = ApiHelper._internal();

  ApiHelper._internal();

  factory ApiHelper(){
    return _singleHelper;
  }

  Future<dynamic> getData(String url) async {
    Uri uri = Uri.parse(baseUrl + url);

    final response =
        await http.get(uri, headers: {"app-id": "62b96f2263ae73585619d4fe"});
    return response;
  }
}
