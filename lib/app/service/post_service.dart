import 'package:session_http/app/data/repo/post_repo.dart';
import 'package:session_http/app/utils/api_response.dart';
import 'package:session_http/app/utils/api_result.dart';

class PostService{
   fetchPostList() async {
      ApiResult result = await PostRepo().getPostList();
      if(result.status== Status.sucess){
          return result.data;
      }

   }
}