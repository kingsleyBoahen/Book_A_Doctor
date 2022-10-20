import 'package:doctor_bookiing_app/widgets/diagnostics_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Hello,",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 17, 
                      color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                  Text("Boahen Kingsley", 
                  style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold),
                  ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: const Image(
                    image: AssetImage("images/user.png")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 145.0,
                width: MediaQuery.of(context).size.width /1.1,
                child: Row(
                  children: [
                     
                  ],
                ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromARGB(255, 221, 204, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 78,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How can we help you?", 
                    style: TextStyle(color: Colors.grey[500], 
                    fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: diagnosticsType.length,
                itemBuilder: ((context, index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 78,
                        width: 150,
                        decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                       children: [
                        Image(image: AssetImage(diagnosticsType[index])
                        ),
                     ],
                  ),
               ),
                  );
               })),
             ),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Doctor list",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("See all", 
                  style: TextStyle(color: Colors.grey[500], 
                  fontWeight: FontWeight.bold,
                  fontSize: 18),),
                )
            ],
           ),
           const SizedBox(
            height: 10,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: SizedBox(
              height: 180,
               child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          height: 140,
                          width: 130,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                        ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                height: 90,
                                width: 80,
                                decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const Text("Dr.Ying Yang Po", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("psychologist", style: TextStyle(color: Colors.grey[500]),)
                        ],
                       ),
                     ),
                  );
                  
                })),
             ),
           )
          ],
        ),
      ),
      bottomSheet: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.purple,), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.purple,), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.purple,), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call, color: Colors.purple,), label: ""),
        ]),
    );
  }
}