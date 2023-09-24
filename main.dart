import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> NarutoImageUrls = [
    // Menyesuaikan jumlah link gambar sesuai dengan baris yang ada
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI3qcqrN2971UTZHOQZvKwPYb8qe-gQmYcXg&usqp=CAU",
    "https://i.kym-cdn.com/entries/icons/facebook/000/045/459/tobirama-senju.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxvypdavV5Cdim0VLMSkXTdSs0y43D_pAmQ&usqp=CAU",
    "https://otakotaku.com/asset/img/character/2015/12/namikaze-minato.jpg",
    "https://staticg.sportskeeda.com/editor/2022/07/118e8-16581424056750.png?w=840",
    "https://ilmupedia.co.id/uploads/article/media_upload/15560/Hokage_Kakashi.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpVPiJeFLfWO8u1hKZYI_cB2ompBagWJbDTA&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/id/c/c9/Jiraiya_main.jpg",
    "https://e0.pxfuel.com/wallpapers/323/72/desktop-wallpaper-yamato-naruto.jpg",
    "https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/06b4bf15-7844-4eac-b27d-013a2b355898/width=450/02337-512443094.0-masterpiece,%20absurdres%20,%20(intricate%20details),%20(colorful),cinematic%20lighting,bust%20shot,extremely%20detailed%20CG%20unity%208k%20wallpaper,t.jpeg",
    "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/02/26/shikamaru-1-3924998505.jpg",
    "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/04/18/WhatsApp-Image-2023-04-18-at-201344-1436470951.jpeg",
    "https://cdn.idntimes.com/content-images/duniaku/post/20220324/membahas-dosa-obito-uchiha-saat-masih-hidup-dan-jahat-94959e61d2f1f6d93658c0837a997daa.jpg",
    "https://stickerswiki.ams3.cdn.digitaloceanspaces.com/saisaku/5671425.512.webp",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPFjCgCEUeQ2I3_q8-TGQOHIEd-qfz3Kv8Dw&usqp=CAU",
    "https://comicvine.gamespot.com/a/uploads/scale_small/0/9804/248634-15306-iruka-umino.jpg",
    "https://catur0512.blogspot.com/2015/06/jutsu-jutsu-toneri-ootsutsuki.html",
  ];

  List<String> NarutoName = [
    "Hashirama Senju",
    "Tobirama Senju",
    "Hiruzen Sarutobi",
    "Namikaze Minato",
    "Tsunade Senju",
    "Hatake Kakakshi",
    "Uzumaki Naruto",
    "Jiraiya",
    "yamato Taichou",
    "Tenten",
    "Shikamaru",
    "Uchica Sasuke",
    "Uchiha obito",
    "Sai",
    "Hyuga Hinata",
    "Iruka Sensei",
    "Toneri Otsutsuki",
  ];

  List<String> NarutoGelar = [
    "Shodaime",
    "Nidaime",
    "Sandaime",
    "Yondaime",
    "Godaime",
    "Rokudaime",
    "Nanadaime",
    "Sannin",
    "Anbu",
    "Jounin",
    "Jounin",
    "Klan Uchiha",
    "Akatsuki",
    "Anbu",
    "Klan Hyuga ",
    "Chuunin",
    "Otsutsuki",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffef6729),
          title: Center(
            child: Text(
              "Naruto's Character",
              style: TextStyle(color: Color(0xffffffff)),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.home, // Icon "Home"
              color: Color(0xffffffff), // Warna
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu, // Icon garis tiga (hamburger menu)
                color: Color(0xffffffff), // Warna
              ),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Color(0xffecb29b), // Warna latar belakang
        body: ListView.builder(
          itemCount: NarutoImageUrls.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25, // Menyesuaikan radius
                    backgroundImage: NetworkImage(NarutoImageUrls[index]),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NarutoName[index], // Judul lagu berdasarkan indeks
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Teks huruf tebal
                        ),
                      )
                    ],
                  ),
                  subtitle: Text(
                    NarutoGelar[index], // Penyanyi berdasarkan indeks
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
