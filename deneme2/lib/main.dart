import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Sayfası',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.aBeeZeeTextTheme()
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Üst menü çubuğu
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Ayarlar sayfasına yönlendirme
            },
          ),
        ],
      ),

      // Yan menü
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                       'images/images1.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Melda Teksarı",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Mobil Uygulama Geliştirici",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Anasayfa"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profilim"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ayarlar"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
        onTap: (index) {
          // Tıklama işlemi eklenebilir
        },
      ),

      // Sağ altta bir düzenleme butonu
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Profil düzenleme ekranına yönlendirme yapılabilir
        },
        child: Icon(Icons.edit),
        tooltip: 'Profili Düzenle',
      ),

      // Profil sayfasının ana gövdesi
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profil resmi
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/21600961/pexels-photo-21600961/free-photo-of-kent-sehir-adam-cift.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), // Profil resmi için örnek URL
              ),
              SizedBox(height: 15),

              // Kullanıcı adı
              Text(
                "Melda Teksari",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),

              // Kullanıcı meslek bilgisi
              Text(
                "Mobil Uygulama Geliştirici",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),

              // Kullanıcı Hakkında kısa bilgi
              Text(
                "Mobil uygulama ve web geliştirme konularında deneyimli yazılım geliştiriciyim. "
                    "Yeni teknolojiler ögrenmeye ve geliştirmeye hevesliyim.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),

              // Sosyal medya ve iletişim simgeleri
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.email, color: Colors.blue),
                    onPressed: () {
                      // E-posta gönderme
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.phone, color: Colors.green),
                    onPressed: () {
                      // Telefonla arama
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.green),
                    onPressed: () {
                      // Konum açma
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
