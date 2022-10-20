import 'package:doctor_bookiing_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: MediaQuery.of(context).size.height / 1.6,
              child: const Image(image: AssetImage("images/Multiple sclerosis-amico.png")),
                 ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 children: const [
                  Text("All specilalists in one package",
                  style: TextStyle(fontWeight: FontWeight.bold, 
                  fontSize: 24),),
                 ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Find your doctor and make an"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: const [
                    Text("appointment in one tap"),
                  ],
                ),
              ),
             const SizedBox(
                height: 25,
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const HomeScreen(),));
                  }, 
                  child: const Center(
                    child: Text("Get Started", 
                    style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
                    ),
                  ),
                  ),
              ),
            ],

        ),
      ),
    );
  }
}