import 'dart:html';

import 'package:flutter/material.dart';

import 'main.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  State<Nature> createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var Share;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: const Text("Nature"),
          centerTitle:true ,
        ),
        body: Stack(
          children: [
            const SizedBox(
              height: 720,
              width: double.infinity,
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: nature.length,
              itemBuilder: (context, index) => Box(nature[index]),
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
          height: 107,
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