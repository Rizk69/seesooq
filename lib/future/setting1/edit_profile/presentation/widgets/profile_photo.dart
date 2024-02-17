import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class ProfilePhoto extends StatelessWidget {
  String img;
  ProfilePhoto({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 70,
          backgroundColor: Colors.red,
          backgroundImage: AssetImage('assets/images/person.jpeg'),
        ),
        Positioned(
          top: 90,
          right: 1,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              img,
              width: 20,
              height: 20,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileStories extends StatelessWidget {
  String img;
  ProfileStories({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('assets/images/person.jpeg'),
          ),
          Positioned(
            top: 50,
            left: 45,
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor('F05A35'),
                  borderRadius: BorderRadius.circular(25)),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileChatCard extends StatelessWidget {
  String name;
  String img;
  String des;
  String count;
  ProfileChatCard(
      {super.key,
      required this.img,
      required this.name,
      required this.des,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/person.jpeg'),
              ),
              Positioned(
                top: 3,
                left: 55,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: HexColor('200E32'),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_voice_outlined,
                    color: HexColor('707070'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: Text(
                      des,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: HexColor('707070'),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text('10:55 ص', style: TextStyle(color: HexColor('4C0497'))),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: HexColor('4C0497'),
                ),
                child: Center(
                    child: Text(count, style: TextStyle(color: Colors.white))),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProfileNewChatCard extends StatelessWidget {
  String name;
  String img;
  ProfileNewChatCard({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/person.jpeg'),
              ),
              Positioned(
                top: 3,
                left: 55,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(
                color: HexColor('200E32'),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class HeaderNewChatCard extends StatelessWidget {
  String name;
  String img;
  Function onPressed;
  HeaderNewChatCard(
      {super.key,
      required this.img,
      required this.name,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/person.jpeg'),
              ),
              Positioned(
                top: 3,
                left: 38,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: HexColor('200E32'),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                'متصل الآن',
                style: TextStyle(
                    color: HexColor('707070'),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.grey.withOpacity(0.2))),
                onPressed: () {
                  onPressed();
                  // context.go(Routes.profilePage);
                },
                icon: const Icon(
                  Icons.videocam_outlined,
                  size: 25,
                  color: Color(0Xff4C0497),
                ),
              ),
              IconButton(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.grey.withOpacity(0.2))),
                onPressed: () {
                  onPressed();
                  // context.go(Routes.profilePage);
                },
                icon: const Icon(
                  Icons.call_outlined,
                  size: 25,
                  color: Color(0Xff4C0497),
                ),
              ),
              IconButton(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.grey.withOpacity(0.2))),
                onPressed: () {
                  onPressed();
                  // context.go(Routes.profilePage);
                },
                icon: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Color(0Xff4C0497),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
