import 'package:session_http/app/utils/api_response.dart';

class ApiResult{
  dynamic data;
  String errorMessage;
  int statusCode;
  Status status;
  ApiResult(this.data,this.errorMessage,this.statusCode,this.status);
}

