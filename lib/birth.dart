import 'package:flutter/material.dart';

class Birth extends StatefulWidget {
  const Birth({Key? key}) : super(key: key);

  @override
  State<Birth> createState() => _BirthState();
}

class _BirthState extends State<Birth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: Text("Birthday"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              height: 720,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
            ),

            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Box("Happy birthday to someone who is forever young!"),
                Box("You were born, and the world became a better place."),
                Box("You’re not older – you’re just more distinguished."),
                Box("Everybody has birthdays. You just wear yours better than most!"),
                Box("Wishing you a birthday that’s just as wonderful as you are!"),
                Box("Hope all your birthday wishes come true!"),
                Box("It’s your special day — get out there and celebrate!"),
                Box("Wishing you the biggest slice of happy today."),
                Box("I hope your celebration gives you many happy memories!"),
                Box("Happy birthday to my ride or die. Love you bunches!"),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget Box(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Expanded(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.pink.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$data',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.share,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}