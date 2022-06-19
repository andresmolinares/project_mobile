import 'package:flutter/material.dart';
import 'package:project_mobile/view/widgets/card_info.dart';
import 'package:project_mobile/view/widgets/more_info.dart';
import 'package:project_mobile/view/widgets/profile_background.dart';
import 'package:project_mobile/view/widgets/profile_header.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileBackground(),
        ListView(
          children: const <Widget>[
            ProfileHeader(),
            MoreInfo(),
          ],
        )
      ],
    );
  }
}
