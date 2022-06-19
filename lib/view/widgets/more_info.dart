import 'package:flutter/material.dart';
import 'package:project_mobile/view/widgets/card_info.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoCard = Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 80.0),
      height: 200.0,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://w0.peakpx.com/wallpaper/823/655/HD-wallpaper-code-symbols-programming-screen-text.jpg')),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.deepPurple,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
    );

    return Stack(
      alignment: const Alignment(0.0, 0.8),
      children: <Widget>[
        photoCard,
        const CardInfo(),
      ],
    );
  }
}
