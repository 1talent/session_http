import 'package:get/get.dart';
import 'package:session_http/app/data/repo/post_repo.dart';
import 'package:session_http/app/data/vos/post_vo.dart';

class PostController extends GetxController {
  RxList<PostVo> mPostList = RxList();

  PostRepo postRepo = PostRepo();

  fetchPostList() async {
    List<PostVo> postList = await postRepo.getPostList();
    mPostList.addAll(postList);
  }
}
