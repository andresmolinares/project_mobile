import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);

  final List<Map<String, String>> _games = [
    {
      "image":
          "https://image.api.playstation.com/vulcan/ap/rnd/202106/3002/Eaq9uyUlyLZK8L5xTlsPl0rM.png",
      "name": "NBA 2K22"
    },
    {
      "image":
          "https://images.ctfassets.net/rporu91m20dc/48FOwmEHJwz03qpd42nzwr/4f08db516cdcd51dc44d3c0474484b3b/doom_eternal_bg_date_m_w_launch.jpg?q=70",
      "name": "Doom Eternal"
    },
    {
      "image":
          "https://img.blogs.es/anexom/wp-content/uploads/2021/04/wz-social-share.jpg",
      "name": "Call of Duty Warzone"
    },
    {
      "image":
          "https://cloudfront-us-east-1.images.arcpublishing.com/infobae/CNTWUAMXZRF3BPIYPCNPFHOMJQ.jpg",
      "name": "League Of Legends"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2021/08/24/avances/1629800665_344472_1629831999_noticia_normal.jpg",
      "name": "Forza Horizon 5"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.builder(
          itemCount: _games.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: Image.network(_games[index]["image"]!).image,
              ),
              title: Text(_games[index]["name"]!),
            );
          },
        ));
  }
}
