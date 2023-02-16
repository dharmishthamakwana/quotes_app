import 'package:flutter/material.dart';
import 'package:quotes_app/main.dart';

class Funny extends StatefulWidget {
  const Funny({Key? key}) : super(key: key);

  @override
  State<Funny> createState() => _FunnyState();
}

class _FunnyState extends State<Funny> {
  var Share;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: const Text("Funny"),
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
              itemCount: funny.length,
              itemBuilder: (context, index) => Box(funny[index]),
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