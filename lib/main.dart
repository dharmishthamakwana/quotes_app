import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quotes_app/birth.dart';
import 'package:quotes_app/failure.dart';
import 'package:quotes_app/friend.dart';
import 'package:quotes_app/funny.dart';
import 'package:quotes_app/homeScreen.dart';
import 'package:quotes_app/life.dart';
import 'package:quotes_app/motive.dart';
import 'package:quotes_app/nature.dart';
import 'package:quotes_app/secondscreen.dart';
import 'package:quotes_app/success.dart';


List life = [
  'The purpose of our lives is to be happy.',
  "Life is what happens when you're busy making other plans.",
  'Get busy living or get busy dying.',
  'You only live once, but if you do it right, once is enough.',
  'If you want to live a happy life, tie it to a goal, not to people or things.',
  "Never let the fear of striking out keep you from playing the game.",
  "Not how long, but how well you have lived is the main thing.",
  "The big lesson in life, baby, is never be scared of anyone or anything.",
  "Life is not a problem to be solved, but a reality to be experienced.",
  "The unexamined life is not worth living."
];
List love = [
  'If I know what love is, it is because of you.',
  'Love You. Our growing love makes my heart so happy!',
  'Love you and will always do, Jenny. Life with you is a sweet ride.',
  'I love you to the moon and back. For starters.',
  'Love always. All the tomorrows, my love is yours.',
  'Owl always love you. Who has my heart? Only you. Forever.',
  'You’re bacon me crazy. Crazy in love. With you.',
  'Love you, Alice. All my hugs and kisses are for you.',
  'I love you. I love the natural warmth in your smile, the sincerity in your eyes.',
  'To my gorgeous Wife. My one and only and forever love.'
];
List motive = [
  "Inspiration does exist, but it must find you working.",
  "Show up, show up, show up, and after a while the muse shows up, too.",
  "Don't bunt. Aim out of the ballpark. Aim for the company of immortals.",
  "I have stood on a mountain of no’s for one yes.",
  "More is lost by indecision than wrong decision.",
  "Courage is like a muscle. We strengthen it by use.",
  "If there is no struggle, there is no progress.",
  "Keep a little fire burning; however small, however hidden.",
  "I never look back, darling. It distracts from the now.",
  "The best way out is always through.",
];
List nature = [
  "Preserve and cherish the pale blue dot, it's the only home we've ever known.",
  "The richness I achieve comes from Nature, the source of my inspiration.",
  "Storms make trees take deeper roots.",
  "Gray skies are just clouds passing over.",
  "Never, no, never did nature say one thing and wisdom another.",
  "How strange that nature does not knock, and yet does not intrude!",
  "There are always flowers for those who want to see them.",
  "I love not man the less, but Nature more.",
  "If you look the right way, you can see that the whole world is a garden.",
  "There is no Wi-Fi in the forest, but I promise you will find a better connection.",
];
List success = [
  "If you want to achieve greatness stop asking for permission.",
  "To live a creative life, we must lose our fear of being wrong.",
  "Things work out best for those who make the best of how things work out.",
  "If you are not willing to risk the usual you will have to settle for the ordinary.",
  "Trust because you are willing to accept the risk, not because it's safe or certain.",
  "All our dreams can come true if we have the courage to pursue them.",
  "If you do what you always did, you will get what you always got.",
  "Success is walking from failure to failure with no loss of enthusiasm.",
  "Successful entrepreneurs are givers and not takers of positive energy.",
  "I have not failed. I've just found 10,000 ways that won't work.",
];
List friend=[
  "A man's friendships are one of the best measures of his worth.",
  "If you have one true friend you have more than your share.",
  "Friendship is another word for love.",
  "Awards become corroded. Friends gather no dust.",
  "Of all possessions a friend is the most precious.",
  "Share your smile with the world. It's a symbol of friendship and peace.",
  "A sweet friendship refreshes the soul.",
  "Try to be a rainbow in someone's cloud.",
  "In the cookie of life, friends are the chocolate chips.",
  "Life was meant for good friends and great adventures.",
];
List funny=[
  "Clothes make the man. Naked people have little or no influence in society.",
  "Ned, I would love to stand here and talk with you—but I’m not going to.",
  "I want my children to have all the things I couldn't afford. Then I want to move in with them.",
  "I walk around like everything’s fine, but deep down, inside my shoe, my sock is sliding off.",
  "I haven't spoken to my wife in years. I didn't want to interrupt her.",
  "I used to sell furniture for a living. The trouble was, it was my own.",
  "There’s nothing wrong with you that an expensive operation can’t prolong.",
  "There is no sunrise so beautiful that it is worth waking me up to see it.",
  "Truth hurts. Maybe not as much as jumping on a bicycle with a seat missing, but it hurts.",
  "My Mama says that alligators are ornery because they got all them teeth and no toothbrush.",
];

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink.shade300,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const Home(),
         'love': (context) => const Love(),
        'life': (context) => const Life(),
        'friend': (context) => const Friend(),
        'birth': (context) => const Birth(),
        'funny': (context) => const Funny(),
        'nature': (context) => const Nature(),
        'success': (context) => const Success(),
        'failure': (context) => const Failure(),
        'motive': (context) => const Motive(),
      },
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Colors.pink.shade100,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}