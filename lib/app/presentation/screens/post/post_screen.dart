import 'package:flutter/material.dart';
import 'package:session_http/app/presentation/screens/post/post_name_time_ago.dart';
import 'package:session_http/app/presentation/screens/widgets/post_single_bg.dart';

import '../widgets/profile_image_design.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PostSingleBg(
          customChild: Column(children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ProfileImageDesign(
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2022/06/03/03/50/beach-7239311_1280.jpg",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ProfileNameTimeAgo(
                    time: "12-23-2022",
                    name: "Aung Thu",
                  )
                ],
              ),
            ),
          ]),
        );
      },
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      itemCount: 10,
    );
  }
}
