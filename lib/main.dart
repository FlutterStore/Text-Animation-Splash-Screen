import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// Logo with Scale Animated Text example
    Widget example = SplashScreenView(
      navigateRoute: const Homepage(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/flutter.png",
      text: "Splash Screen",
      textType: TextType.ScaleAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30.0,
        color: Colors.white
      ),
      backgroundColor: Colors.black,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: example,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Native Splash",style: TextStyle(fontSize: 15),),
      ),
      body: const Center(
        child: Text("Successoft Infotech",style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
