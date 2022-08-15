import 'package:http/http.dart' as http;
import 'package:session_http/app/utils/api_response.dart';

class ApiHelper {
  String baseUrl = "https://dummyapi.io/data/v1/";

  // creates an instance privately
  static final ApiHelper _helper = ApiHelper._internal();

  // factory keyword guarantees that the internal private instance is returned
  factory ApiHelper() {
    return _helper;
  }

  ApiHelper._internal();

  Future<ApiResponse> getData(String url) async {
    Uri uri = Uri.parse(baseUrl + url);

    final response =
        await http.get(uri, headers: {"app-id": "62b96f2263ae73585619d4fe"});

    ApiResponse resultResponse = _returnReponse(response);

    return resultResponse;
  }

  ApiResponse _returnReponse(var response) {
    if (response != null) {
      switch (response.statusCode) {
        case 200:
          return ApiResponse(response.body, "", 200, Status.sucess);
        case 201:
          return ApiResponse(response.body, "", 201, Status.sucess);
        case 404:
          return ApiResponse(null, "Not Found the data ", 404, Status.fail);

        default:
          return ApiResponse(null, "Something went wrong", 500, Status.fail);
      }
    } else {
      return ApiResponse(null, "Something went wrong", 400, Status.fail);
    }
  }
}
