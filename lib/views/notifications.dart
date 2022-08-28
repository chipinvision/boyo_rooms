import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

  List<String> messagetitle = [
    'Festive Offers Started',
    'Booking Cancelled',
    'Booking Successful',
  ];

  List<String> messagecontent = [
    'Get up to 50% off on your...',
    'Your cancellation request for...',
    'Your booking is successful...'
  ];

  List<IconData> icons = [
    Icons.percent,
    Icons.cancel,
    Icons.approval,
  ];

  List<Color> colors = [
    Colors.amberAccent,
    Colors.redAccent,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TopBar(),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: messagetitle.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left:20, right: 20, top: 10),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: colors[index],
                          child: Icon(
                            icons[index],
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                            messagetitle[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle:  Text(
                            messagecontent[index],
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox();
            },

          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Notifications",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}