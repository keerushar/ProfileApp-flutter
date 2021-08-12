import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 265,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.list,
                          size: 30,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kiran Sharma",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "23 years",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                              Text(
                                "Reg.NO",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact Me",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.email),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "keerushar21@gmail.com",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "+977-9867685793",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Follow Me",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => _launchURL(
                                          "https://www.facebook.com/rushar.g9/"),
                                      child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                            'assets/images/facebook.png',
                                          )),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => _launchURL(
                                            "https://www.linkedin.com/in/kiran-sharma-4b735912b/"),
                                        child: Image(
                                            height: 50,
                                            width: 50,
                                            image: AssetImage(
                                              'assets/images/linkedin.png',
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () => _launchURL(
                                          "https://www.instagram.com/kee.runn/"),
                                      child: Expanded(
                                        child: Image(
                                            height: 50,
                                            width: 50,
                                            image: AssetImage(
                                              'assets/images/instagram.png',
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => _launchURL(
                                          "https://twitter.com/keerushar21"),
                                      child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                            'assets/images/twitter.png',
                                          )),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: GestureDetector(
                                        onTap: () => _launchURL(
                                            "https://github.com/keerushar"),
                                        child: Image(
                                            height: 50,
                                            width: 50,
                                            image: AssetImage(
                                              'assets/images/github.png',
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => _launchURL(
                                            "https://www.pinterest.com/kiranpoudel14/_saved/"),
                                        child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                            'assets/images/pininterest.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  await canLaunch(url) ? await launch(url) : throw 'Could not launch';
}
