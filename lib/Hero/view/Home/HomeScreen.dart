import 'package:adv_flutter_animation/Hero/view/Second/SecondScreen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE77169),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'TODO',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 25),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/download.jpeg')),
              ),
            ),
          ),
          ListTile(
            title: Text('Hello , John',style: TextStyle(color: Colors.white,fontSize: 25),),
            subtitle: Text('This is a Daily  quote \n you have 10 tasks to do today.',style: TextStyle(color: Colors.white),),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
            },
            child: Hero(
              tag: 'box',
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(16.0),
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                  Border.all(color: Colors.grey, width: 0.8),
                                ),
                                child: const Icon(
                                  Icons.alarm,
                                  color: Color(0xffE77169),
                                ),
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' 8 Tasks',
                                style:  TextStyle(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Custom',
                                style: TextStyle(
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 230,
                                    child: LinearProgressIndicator(
                                      value: 0.8,
                                      borderRadius: BorderRadius.circular(2),
                                      backgroundColor: Colors.pink.shade100,
                                      color: const Color(0xffE77169),
                                      minHeight: 5,
                                    ),
                                  ),
                                  Text(
                                    '88 %',
                                    style:  TextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}