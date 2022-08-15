import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:session_http/app/presentation/screens/post/post_like_design.dart';
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
            customChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    ProfileImageDesign(
                      imageUrl:
                          'https://randomuser.me/api/portraits/med/men/45.jpg',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ProfileNameTimeAgo(
                      time: "3 hours ago",
                      name: "Arun Katwal",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2022/06/03/03/50/beach-7239311_1280.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 185.h,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'this is very good',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.h,
              ),
              PostLikeDesign(likeCount: 12),
              SizedBox(
                height: 4,
              ),
              const Divider(),
              SizedBox(
                height: 4,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.heart,
                      size: 24,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    FaIcon(
                      FontAwesomeIcons.comment,
                      size: 24,
                      color: Colors.black,
                    ),
                  ])
            ]));
      },
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      itemCount: 10,
    );
  }
}
