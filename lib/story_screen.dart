import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class InstagramStory extends StatefulWidget {
  @override
  _InstagramStoryState createState() => _InstagramStoryState();
}

class _InstagramStoryState extends State<InstagramStory> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.text(
                title:
                    "Great to be live for Connect today. Excited about all the progress we're making on AI, virtual and mixed reality, smart glasses, and more!",
                backgroundColor: Colors.blue,
              ),
              StoryItem.pageImage(
                url:
                    "https://instagram.fala2-1.fna.fbcdn.net/v/t51.2885-15/384970070_1308272569805570_7485213685950090046_n.heic?stp=dst-jpg_e35_p640x640_sh0.08&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDEuc2RyIn0&_nc_ht=instagram.fala2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=FIt54-puDaUAX-D0qaj&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzIwNDIzOTQ5Nzg4NjI0OTMxMQ%3D%3D.2-ccb7-5&oh=00_AfCT-ke7qHLBuPqrom_hsPuDHUj7k-3_TRpqv3dZslc-7w&oe=65229CD1&_nc_sid=ee9879",
                caption:
                    "Sparring got a little out of hand. May need to update my avatar 🤣",
                controller: storyController,
              ),
              StoryItem.pageImage(
                  url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                  caption: "Working with gifs",
                  controller: storyController),
            ],
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
              Navigator.of(context).pop();
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: storyController,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://instagram.fala2-1.fna.fbcdn.net/v/t51.2885-19/352224138_1028122805231303_1175896139426286760_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fala2-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=PYg0nVxbtfkAX-GEPq0&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfC9jZoCEX2pXfRyf5OZSsS_vXEuydlsrU6StrBrL6TR1A&oe=6522B8EA&_nc_sid=8b3546'),
                    radius: 20,
                  ),
                  SizedBox(width: 8),
                  Text('zuck',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
