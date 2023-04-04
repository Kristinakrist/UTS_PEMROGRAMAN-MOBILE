import 'package:favorite_button/favorite_button.dart';
import 'package:flower_app/color/color.dart';
import 'package:flower_app/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

List<User> user = [];

class User {
  //modal class for Person object
  String bunga, desc, foto;
  User({
    required this.bunga,
    required this.desc,
    required this.foto,
    // required this.type
  });
}

class utama extends StatefulWidget {
  const utama({super.key});

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  @override
  void initState() {
    //adding item to list, you can add using json from network
    user.add(User(
        bunga: "Bunga Matahari",
        desc:
            "Bunga matahari (Helianthus annuus L.) adalah tumbuhan semusim dari suku kenikir-kenikiran (Asteraceae) yang populer, baik sebagai tanaman hias maupun tanaman penghasil minyak. Bunga tumbuhan ini sangat khas: besar, biasanya berwarna kuning terang, dengan kepala bunga yang besar (diameter bisa mencapai 30 cm).",
        foto: "assets/bungaMatahari.jpg"));
    user.add(User(
        bunga: "Bunga Dahlia",
        desc:
            "Dahlia adalah tanaman perdu berumbi yang sifatnya tahunan (perenial), berbunga di musim panas sampai musim gugur. Dahlia adalah bunga nasional negara Meksiko yang juga merupakan negara asal bunga ini. Dahlia termasuk bunga yang terlambat dikembang-biakkan.",
        foto: "assets/bungaDahlia.jpg"));
    user.add(User(
        bunga: "Bunga Mawar",
        desc:
            "Mawar atau ros (Rosa) adalah tumbuhan perdu, pohonnya berduri, bunganya berbau wangi dan berwarna indah, terdiri atas daun bunga yang bersusun; meliputi ratusan jenis, tumbuh tegak atau memanjat, batangnya berduri, bunganya beraneka warna, seperti merah, putih, merah jambu, merah tua, dan berbau harum.",
        foto: "assets/bungaMawar.jpg"));
    user.add(User(
        bunga: "Bunga Tulip",
        desc:
            "Tulip merupakan tumbuhan tahunan berumbi yang tingginya antara 10–70 cm, daunnya berlilin, berbentuk sempit memanjang berwarna hijau nuansa kebiru-biruan, dan bunganya berukuran besar terdiri 6 helai daun mahkota.",
        foto: "assets/bungaTulip.jpg"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: user.map((personone) {
                return Card(
                  child: SizedBox(
                    child: ListTile(
                      title: Container(
                          child: Text(
                        personone.bunga,
                        style: TextStyle(
                          fontFamily: 'LeJour',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      )),
                      subtitle: ReadMoreText(
                        "${personone.desc}",
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '  Selengkapnya...',
                        trimExpandedText: ' Persingkat...',
                        textAlign: TextAlign.justify,
                      ),
                      leading: FavoriteButton(
                        iconSize: 30,
                        isFavorite: false,
                        iconDisabledColor: Colors.white,
                        valueChanged: (_isFavorite) {
                          print('Is Favorite : $_isFavorite');
                        },
                      ),
                      trailing: Image(image: AssetImage('${personone.foto}')),
                    ),
                  ),
                );
              }).toList(growable: false),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: second,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return tambah_item();
            }),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class tambah_item extends StatefulWidget {
  const tambah_item({super.key});

  @override
  State<tambah_item> createState() => _addState();
}

class _addState extends State<tambah_item> {
  String nama = '';
  String desc = '';
  String author = '';

  final ctrlNama = TextEditingController();
  final ctrlAuthor = TextEditingController();
  final ctrlDesc = TextEditingController();

  Widget Bunga() {
    return TextFormField(
      maxLines: 1,
      controller: ctrlNama,
      decoration: InputDecoration(
        hintText: "Judul",
        prefixIcon: const Icon(Icons.title),
        hintStyle: TextStyle(
          fontFamily: 'LeJour',
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  Widget describe() {
    return TextFormField(
      maxLines: 5,
      controller: ctrlDesc,
      decoration: InputDecoration(
        hintText: "Deskripsi",
        prefixIcon: const Icon(Icons.description),
        hintStyle: TextStyle(
          fontFamily: 'LeJour',
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: background,
          title: Text(
            'Tambah Bunga',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return homePage();
                  }),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: Icon(Icons.arrow_back_sharp),
              color: second,
              iconSize: 30,
            );
          })),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.dstATop),
                image: const AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Judul',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'LeJour',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Bunga(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Deskripsi',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'LeJour',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      describe(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  width: 315,
                  height: 45,
                  child: ElevatedButton(
                    // tombol order
                    onPressed: () {
                      setState(() {
                        nama = ctrlNama.text;
                        author = ctrlAuthor.text;
                        desc = ctrlDesc.text;
                        user.add(User(
                          bunga: nama,
                          desc: desc,
                          foto: 'assets/bungaSakura.jpg',
                        ));
                      });
                      final snackBar = SnackBar(
                        content:
                            const Text('Resep anda berhasil ditambahkan !'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return const homePage();
                        }),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Atma'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
