import 'package:flutter/material.dart';
import 'package:session_http/app/presentation/screens/widgets/post_single_bg.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PostSingleBg(
          customChild: Container(),
        );
      },
      itemCount: 10,
    );
  }
}
