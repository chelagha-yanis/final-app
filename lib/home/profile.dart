import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D9FE),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          headers(context),
          bullshit(),
          profilepic(),
          almofid(),
          logout(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget headers(BuildContext contex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget bullshit() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'My Profile',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
      ],
    );
  }

  Widget profilepic() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'images/zz.png',
              fit: BoxFit.cover,
              height: 70,
              width: 70,
            ),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Zakaria Mammerine",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
          Text(
            "EZakariaMam@uni-boumerdes.com",
            style: TextStyle(
              fontSize: 10,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ])
      ],
    );
  }

  Widget almofid() {
    return Expanded(
      child: ListView.builder(
        itemCount: Profileinfo.length,
        itemBuilder: (context, index) {
          Profile profile = Profileinfo[index];
          return Column(
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            profile.title,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            profile.description,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget logout() {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile {
  Profile({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "titel": title,
        "describtion": description,
      };
}

final Profileinfo = [
  Profile(
    title: 'My Products',
    description: 'Already have 12 orders',
  ),
  Profile(
    title: 'My Orders',
    description: 'Already have 12 orders',
  ),
  Profile(
    title: 'Payment Methods',
    description: 'Visa **34',
  ),
  Profile(
    title: 'Promocodes',
    description: 'You have special promocodes',
  ),
  Profile(
    title: 'My Reviews',
    description: 'Reviews for 4 items',
  ),
  Profile(
    title: 'Settings',
    description: 'Notification,Password',
  ),
];
