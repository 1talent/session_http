import 'dart:convert';

import 'package:session_http/app/data/vos/post_vo.dart';
import 'package:session_http/app/utils/api_helper.dart';
import 'package:session_http/app/utils/api_response.dart';
import 'package:session_http/app/utils/api_result.dart';

class PostRepo {
  Future<ApiResult> getPostList() async {
    
    ApiResponse result = await ApiHelper().getData("post");

    if (result.status == Status.sucess) {
      Map mResultMap = jsonDecode(result.data);
      List<PostVo> mPostList = postVoFromJson(jsonEncode(mResultMap['data']));
      return ApiResult(mPostList, "", result.statusCode, result.status);
    } else {
      return ApiResult(result.data,result.errorMessage, result.statusCode, result.status);
    }
  }
}
