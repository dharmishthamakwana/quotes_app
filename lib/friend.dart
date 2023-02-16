import 'package:flutter/material.dart';

import 'main.dart';

// import 'package:share_plus/share_plus.dart';

class Friend extends StatefulWidget {
  const Friend({Key? key}) : super(key: key);

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var Share;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: const Text("Friendship"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            const SizedBox(
              height: 720,
              width: double.infinity,
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: friend.length,
              itemBuilder: (context, index) => Box(friend[index]),
            ),
          ],
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
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
                  data,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: (){
                      Share.share(data);
                    },
                    child: const Icon(
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