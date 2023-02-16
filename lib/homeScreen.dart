import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.pink.shade300,
          title: const Text('Quotes Category'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'life');
              },
              child: Box('Life', 'assets/images/Life .jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'love');
              },
              child: Box('Love', 'assets/images/love (1).jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'friend');
              },
              child: Box('Friendship', 'assets/images/f.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'birth');
              },
              child: Box('Birthday', 'assets/images/b.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'funny');
              },
              child: Box('Funny', 'assets/images/f (1).jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'nature');
              },
              child: Box('Nature', 'assets/images/n.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'success');
              },
              child: Box('Success', 'assets/images/s.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'failure');
              },
              child: Box('Failure', 'assets/images/f (2).jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'motive');
              },
              child: Box('Motivativational', 'assets/images/m.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'motive');
              },
              child: Box('Motivativational', 'assets/images/m.jpg'),
            ),
          ],
        ),
      ),
    );
  }
  Widget Box(String cate, String image) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.pink,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xff7D612B), width: 2)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                cate,
                style: Theme.of(context).textTheme.headline1,
              ),
              const Expanded(
                  child: SizedBox(
                width: 10,
              )),
              const Icon(
                Icons.navigate_next,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
