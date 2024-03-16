import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.format_list_bulleted_rounded),
            color: Colors.black,
          )
        ],
        title: Text(
          'Python',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('images/story.png'),
                  child: CircleAvatar(
                    radius: 41,
                    backgroundImage: AssetImage('images/JOJO.jpg'),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 12)),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 35)),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 38)),
                        Text(
                          '222',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    SizedBox(height: 6, width: 20), // Added for spacing
                    Row(
                      children: [
                        //Padding(padding: EdgeInsets.only(left: 10)),
                        Text('Posts'),
                        SizedBox(width: 10), // Adjust spacing as needed
                        Padding(padding: EdgeInsets.only(left: 7)),
                        Text('Followers'),
                        SizedBox(width: 8), // Adjust spacing as needed
                        Padding(padding: EdgeInsets.only(left: 13)),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Programmer:3',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              "Don't mind me i'm just making a Instagram Clone",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xff3a3a3a)),
                    ),
                  ),
                ),
                SizedBox(width: 2),
                SizedBox(
                  width: 120,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Share Profile',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xff3a3a3a)),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  width: 60,
                  height: 30,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person_add),
                    label: Text(''),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xff3a3a3a)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.grid_on)),
                SizedBox(width: 90),
                IconButton(onPressed: () {}, icon: Icon(Icons.smart_display)),
                SizedBox(width: 80),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_box_outlined),
                ),
              ],
            ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 80.0,
                  ),
                ]),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'No Posts Yet!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
