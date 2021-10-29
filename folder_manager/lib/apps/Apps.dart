import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Notification(
          image: Image.asset('images/got.jpeg'),
          icons: Image.asset('images/whtps.png'),
          yazi: 'WhatsApp',
        ),
        Notification(
          image: Image.asset('images/image2.jpeg'),
          icons: Image.asset('images/insta2.png'),
          yazi: 'Instagram',
        ),
        Notification(
          image: Image.asset('images/image2.jpeg'),
          icons: Image.asset('images/telegram1.jpeg'),
          yazi: 'Snapseed',
        ),
        Notification(
          image: Image.asset('images/image2.jpeg'),
          icons: Image.asset('images/snapseed.jpeg'),
          yazi: 'Telegram',
        ),
        Notification(
          image: Image.asset('images/image2.jpeg'),
          icons: Image.asset('images/gmail.png'),
          yazi: 'Gmail',
        ),

      ],
    );
  }
}

class Notification extends StatelessWidget {
  final String yazi;
  final Image image, icons;

  const Notification(
      {required this.yazi, required this.image, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: icons,
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                yazi,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 10,
                    color: Colors.grey,
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              color: Colors.white,
              height: 90,
              width: 67,
              child: image,
            ),
          )
        ],
      ),
    );
  }
}
