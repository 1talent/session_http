class ApiResponse{
  dynamic data;
  String errorMessage;
  int statusCode;
  Status status;
  ApiResponse(this.data,this.errorMessage,this.statusCode,this.status);
}

enum Status{
  sucess,fail
}