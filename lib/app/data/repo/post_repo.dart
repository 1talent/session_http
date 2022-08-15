import 'dart:convert';

import 'package:session_http/app/data/vos/post_vo.dart';
import 'package:session_http/app/utils/api_helper.dart';

class PostRepo {

  getPostList() async {
    var result = await ApiHelper().getData("post");
    Map mResultMap = jsonDecode(result.body);
    List<PostVo> mPostList = postVoFromJson(jsonEncode(mResultMap['data']));
    return mPostList;
  }
}
