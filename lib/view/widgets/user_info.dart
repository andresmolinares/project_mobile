import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
        width: 90.0,
        height: 90.0,
        margin: const EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, width: 2.0, style: BorderStyle.solid),
            shape: BoxShape.circle,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/andres-molinares.jpg'))));

    final userInfo =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(
        margin: const EdgeInsets.only(bottom: 5.0),
        child: const Text(
          'Andres Molinares',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      const Text(
        'fmolinares@lsv-tech.com',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.white30,
        ),
      ),
    ]);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
      child: Row(
        children: <Widget>[userPhoto, userInfo],
      ),
    );
  }
}
