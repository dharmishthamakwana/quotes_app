import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';

import 'main.dart';

class Love extends StatefulWidget {
  const Love({Key? key}) : super(key: key);

  @override
  State<Love> createState() => _LoveState();
}

class _LoveState extends State<Love> {
  var Share;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: Text("Love"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              height: 720,
              width: double.infinity,
              // child: Image.asset('assets/images/love (1).jpg',fit: BoxFit.cover,),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: love.length,
              itemBuilder: (context, index) => Box(love[index]),
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
                  child: InkWell(
                    onTap: (){
                      Share.share(data);
                    },
                    child: Icon(
                      Icons.share,
                      color: Color(0xFFFFFFFF),
                    ),
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