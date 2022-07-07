import 'package:flutter/material.dart';

class ProfileNameTimeAgo extends StatelessWidget {
  final String time;
  final String name;
  const ProfileNameTimeAgo({Key? key, required this.time, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 12),
        ),
        Text(
          time,
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 10),
        )
      ],
    );
  }
}
