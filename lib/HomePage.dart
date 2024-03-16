import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  _HomePageState createState() => _HomePageState();
}

bool Liked = false;

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/Billie.jpg",
    "images/Cloud.jpg",
    "images/B.png",
    "images/JOJO.jpg",
    "images/download.jpg",
    "images/images.jpg",
    "images/lake1.jpg",
    "images/lake2.jpg",
  ];
  List<String> posts = [
    "images/Billie2.jpg",
    "images/MichaelAndJanet.jpg",
    "images/story.png",
    "images/Jackson.jpg",
    "images/klipartz.com.png",
    "images/JOJO.jpg",
    "images/Cloud.jpg",
    "images/lake2.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/klipartz.com.png',
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline),
              color: Colors.black),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: Colors.black),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_bubble_outline),
              color: Colors.black),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Story
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/story.png'),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                    8,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Header Post
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage: AssetImage(
                                      "images/story.png",
                                    ),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage(
                                        profileImages[index],
                                      ),
                                    ),
                                  ),
                                ),
                                Text("Profile Name"),
                                Spacer(),
                                IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {})
                              ],
                              //Image Post
                            ),
                            Image.asset(posts[index], width: double.infinity),
                            //Footer Post
                            Row(children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Liked = true;
                                  });
                                },
                                icon: Icon(Icons.favorite_border),
                                color: Liked == true
                                    ? Colors.pink
                                    : Color.fromRGBO(0, 0, 0, 1),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat_bubble_outline)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.label_outline)),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_border)),
                            ]),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(text: "Liked by "),
                                        TextSpan(
                                            text: "Profile Name",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(text: " and "),
                                        TextSpan(
                                            text: "Profile Name",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: "Profile Name",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                " this is the best Picture i've ever see in Insta :3"),
                                      ],
                                    ),
                                  ),
                                  Text("view all 12 comments",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
