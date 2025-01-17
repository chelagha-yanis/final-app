import 'package:flutter/material.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

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
          textnotification(),
          listnotification(),
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
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget textnotification() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Notification',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
      ],
    );
  }

  Widget listnotification() {
    return Expanded(
      child: ListView.builder(
        itemCount: Notificationinfo.length,
        itemBuilder: (context, index) {
          Notificationss notificationss = Notificationinfo[index];
          return Dismissible(
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            key: ValueKey<int>(notificationss.hashCode),
            onDismissed: (direction) {
              Notificationinfo.removeAt(index);
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border(bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
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
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                notificationss.name,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              notificationss.sends,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              notificationss.time,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Notificationss {
  Notificationss({
    required this.name,
    required this.sends,
    required this.image,
    required this.time,
  });

  String name;
  String sends;
  String image;
  String time;

  factory Notificationss.fromJson(Map<String, dynamic> json) => Notificationss(
        sends: json["sends"],
        name: json["name"],
        time: json["time"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "sends": sends,
        "image": image,
        "time": time,
      };
}

final Notificationinfo = [
  Notificationss(
    sends: ' please check your message',
    image: 'images/kk.png',
    name: 'Mohamed',
    time: 'Today at 8:00 AM',
  ),
  Notificationss(
    sends: 'just made a request',
    image: 'images/mm.png',
    name: 'Saifeden',
    time: 'Today at 5:00 PM',
  ),
  Notificationss(
    sends: 'just liked your product',
    image: 'images/nn.png',
    name: 'Zakaria',
    time: 'Today at 9:00 AM',
  ),
  Notificationss(
    sends: 'please check your message',
    image: 'images/vv.png',
    name: 'Yanis',
    time: 'Today at 8:00 AM',
  ),
  Notificationss(
    sends: 'Just canceled his order',
    image: 'images/zz.png',
    name: 'Rayan',
    time: 'Today at 11:00 AM',
  ),
];
