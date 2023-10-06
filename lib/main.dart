import 'package:flutter/material.dart';
import 'package:instagram_clone/story_screen.dart';

void main() => runApp(const InstagramApp());

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({super.key});

  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: <Widget>[
          _buildStoriesRow(),
          ..._buildPosts(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      leading: const Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Icon(Icons.camera_alt, color: Colors.black),
      ),
      titleSpacing: 0.0,
      title: Image.network(
        'https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png',
        height: 40,
      ),
      actions: [
        IconButton(
            icon: const Icon(Icons.live_tv, color: Colors.black),
            onPressed: () {

            }
        ),
        IconButton(
            icon: const Icon(Icons.send, color: Colors.black),
            onPressed: () {

            }
        ),
        const SizedBox(width: 12.0),
      ],
    );
  }


  Widget _buildStoriesRow() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InstagramStory()));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://instagram.fala2-1.fna.fbcdn.net/v/t51.2885-19/352224138_1028122805231303_1175896139426286760_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fala2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=PYg0nVxbtfkAX-GEPq0&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfC9jZoCEX2pXfRyf5OZSsS_vXEuydlsrU6StrBrL6TR1A&oe=6522B8EA&_nc_sid=8b3546'),
                  ),
                ),
                SizedBox(height: 4),
                Text('zuck', style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }



  List<Widget> _buildPosts() {
    List<Widget> posts = [];
    for (int i = 0; i < 5; i++) {
      posts.add(_buildPost());
    }
    return posts;
  }

  Widget _buildPost() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          // Заголовок поста
          Row(
            children: const <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage('https://instagram.fala2-1.fna.fbcdn.net/v/t51.2885-19/358181335_682797900339535_3904931281104921532_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fala2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=DK4RONgqhJIAX_WxC1M&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCPClsbucvqlHS11CR1ODfJYzokcQnQVCqoqWsK-lKKRg&oe=652265C2&_nc_sid=8b3546'),
              ),
              SizedBox(width: 8),
              Text('thisisbillgates'),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          const SizedBox(height: 8),
          Image.network('https://instagram.fala2-1.fna.fbcdn.net/v/t39.30808-6/386156947_18307930669187733_5969579516659154100_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=instagram.fala2-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=Wdyem-NMDjQAX9HlVAd&edm=ACWDqb8AAAAA&ccb=7-5&ig_cache_key=MzIwNTc0NjIyNTAzNDc4MTcwNg%3D%3D.2-ccb7-5&oh=00_AfAXhNwIsLzEWtJKLDj1MqVu0gtl9Ptgk2uWJcpv3WiD3w&oe=65225A14&_nc_sid=ee9879'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.comment), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.send), onPressed: () {}),
                ],
              ),
              IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Liked by zuck and 925 others'),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: 'thisisbillgates ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  TextSpan(text: 'I got to spend the day at Chula Vista Middle School back in April, and I’ve been excited to share what I learned—and why it made me hopeful for a future where more people develop a love for math like mine.', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: 'Добавить',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Любимое',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Профиль',
        ),
      ],
    );
  }
}
