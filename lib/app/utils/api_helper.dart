import 'package:http/http.dart' as http;

class ApiHelper {
   
  String baseUrl = "https://dummyapi.io/data/v1/";

  // creates an instance privately
  static final ApiHelper _helper = ApiHelper._internal();

  // factory keyword guarantees that the internal private instance is returned
  factory ApiHelper(){
    return _helper;
  }

  ApiHelper._internal();

  
  Future<dynamic> getData(String url) async {
    Uri uri = Uri.parse(baseUrl + url);

    final response =
        await http.get(uri, headers: {"app-id": "62b96f2263ae73585619d4fe"});
    return response;
  }
}
