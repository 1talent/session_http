import 'package:get/get.dart';
import 'package:session_http/app/data/repo/post_repo.dart';
import 'package:session_http/app/data/vos/post_vo.dart';
import 'package:session_http/app/service/post_service.dart';

class PostController extends GetxController {
  RxList<PostVo> mPostList = RxList();

  PostService service = PostService();

  fetchPostList() async {
    List<PostVo> postList = await service.fetchPostList();
    mPostList.addAll(postList);
  }
}
