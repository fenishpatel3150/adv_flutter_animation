import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'box',
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.grey,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 0.8),
                        ),
                        child: const Icon(
                          Icons.alarm,
                          color: Color(0xffE77169),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' 8 Tasks',
                        style: TextStyle(),
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
                            width: 300,
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
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Privous -Thu',
                        style: TextStyle(color: Colors.grey),
                      ),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            leading: Checkbox(
                              activeColor: Color(0xffE77169),
                              checkColor: Colors.white,
                              value: true,
                              onChanged: (value) {},
                            ),
                            title: Text(
                              'MeetClients',
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: Icon(Icons.alarm),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
