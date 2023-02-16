import 'package:flutter/material.dart';

import 'package:quotes_app/main.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var Share;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Success"),
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
              itemCount: success.length,
              itemBuilder: (context, index) => Box(success[index]),
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