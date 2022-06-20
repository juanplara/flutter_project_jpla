import 'package:flutter/material.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  final List<Map<String, dynamic>> games = const [
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://image.api.playstation.com/vulcan/img/rnd/202111/0818/6OFhqtXvBpBavqM50dciqeRH.png",
      "name": "Battlefield"
    },
    {
      "image":
          "https://media.vandal.net/m/6756/super-mario-world-cv-201428152916_1.jpg",
      "name": "Super Mario World"
    },
    {
      "image":
          "https://powergamingnetwork.com/wp-content/uploads/2015/10/36128-Top_Gear_USA-1459044408.png",
      "name": "Top Gear"
    },
    {
      "image":
          "https://media.vandal.net/m/26358/donkey-kong-country-3-dixie-kongs-double-trouble-cv-2014114114153_1.jpg",
      "name": "Donkey Kong"
    },
    {
      "image":
          "https://image.api.playstation.com/cdn/EP0002/CUSA07399_00/bPXMfRCtjGgvIS0BxOWqVsn94MAMLMkE.png",
      "name": "Crash Bandicoot"
    },
    {
      "image": "https://media.vandal.net/m/55231/mega-man-x-legacy-collection-2018724113918_10.jpg",
      "name": "Rockman X"
    },
    {
      "image":
          "https://media.vandal.net/i/ivandal/1200x630/4139/age-of-empires-2-2016105171919_1.jpg",
      "name": "Age of Empires II"
    },
    {
      "image":
          "https://coverproject.sfo2.cdn.digitaloceanspaces.com/playstation_1/ps1_medalofhonor_front_de_thumb.jpg",
      "name": "Medal Of Honor"
    },
    {
      "image": "https://m.media-amazon.com/images/I/51IOiivl-AL._AC_.jpg",
      "name": "Metal Gear Solid"
    },
    {
      "image":
          "https://as01.epimg.net/meristation/imagenes/2015/04/30/reportaje/1430373600_448371_1532453664_sumario_normal.png",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://store-images.s-microsoft.com/image/apps.43891.13835473807186336.5cf6bf6e-e12d-494f-a7ea-420b2c6b1a23.0c62e5ab-ea75-4447-84a9-67cd7c26e92f",
      "name": "Call Of Duty: Warzone"
    },
    {
      "image":
          "https://http2.mlstatic.com/D_NQ_NP_762835-MLB26829118476_022018-O.jpg",
      "name": "Resident Evil 2"
    },
    {
      "image":
          "https://lastfm.freetls.fastly.net/i/u/770x0/ccb84d017d1d6499b48b84502dd5716b.jpg",
      "name": "Doom"
    },
    {
      "image": "https://image.api.playstation.com/vulcan/img/rnd/202111/0818/6OFhqtXvBpBavqM50dciqeRH.png",
      "name": "Battlefield"
    },
    {
      "image":
          "https://media.vandal.net/m/6756/super-mario-world-cv-201428152916_1.jpg",
      "name": "Super Mario World"
    },
    {
      "image":
          "https://powergamingnetwork.com/wp-content/uploads/2015/10/36128-Top_Gear_USA-1459044408.png",
      "name": "Top Gear"
    },
    {
      "image":
          "https://media.vandal.net/m/26358/donkey-kong-country-3-dixie-kongs-double-trouble-cv-2014114114153_1.jpg",
      "name": "Donkey Kong"
    },
    {
      "image":
          "https://image.api.playstation.com/cdn/EP0002/CUSA07399_00/bPXMfRCtjGgvIS0BxOWqVsn94MAMLMkE.png",
      "name": "Crash Bandicoot"
    },
    {
      "image": "https://media.vandal.net/m/55231/mega-man-x-legacy-collection-2018724113918_10.jpg",
      "name": "Rockman X"
    },
    {
      "image":
          "https://media.vandal.net/i/ivandal/1200x630/4139/age-of-empires-2-2016105171919_1.jpg",
      "name": "Age of Empires II"
    },
    {
      "image":
          "https://coverproject.sfo2.cdn.digitaloceanspaces.com/playstation_1/ps1_medalofhonor_front_de_thumb.jpg",
      "name": "Medal Of Honor"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Videogames List View"),
        backgroundColor: Colors.black,
      ),

      // First List Example & Second List Example
      /* body: ListView(
          children: const [
            First List Example
            Text("Texto 1"),
            Text("Texto 2"),
            Text("Texto 3"),
            Text("Texto 4"),

            Second List Example
            ListTile(
            leading: Icon(Icons.cloud_circle_outlined),
            iconColor: Colors.red,
            title: Text("Texto 1"),
          ),
          ListTile(
            leading: Icon(Icons.cloud_circle_outlined),
            iconColor: Colors.blue,
            title: Text("Texto 2"),
          ),
          ListTile(
            leading: Icon(Icons.cloud_circle_outlined),
            iconColor: Colors.black,
            title: Text("Texto 3"),
          ),
          ListTile(
            leading: Icon(Icons.cloud_circle_outlined),
            iconColor: Colors.amber,
            textColor: Colors.blue,
            title: Text("Texto 4"),
          ),
            
          ],
        ) */

      // Third List Example
      body: ListView.builder(
        itemCount: games.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: Image.network(games[index]["image"]).image,
            ),
            title: Text(games[index]["name"]),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: Column(
                        children: [
                          SizedBox(
                            child: Image.network(games[index]["image"])
                          ),
                          Text(games[index]["name"]),
                        ],
                      ),
                    );
                  });
            },
          );
        },
      ),
    );
  }
}
