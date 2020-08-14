import 'package:flutter/material.dart';

class LandingPage3 extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Widget> Pagechildren(double width) {
    return <Widget>[
      Container(
        color: Colors.white,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Text(
                "My Works",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            title: "super_hero_app",
                            description: "using provider and http",
                          ),
                          Card(
                            title: "detector_app",
                            description: "using tensor flow lite flutter",
                          ),
                          Card(
                            title: "flutter_arch_app",
                            description: "working with provider libary \nand understanding how enums work,"
                                "\nthe fastest way to learn flutter arch",
                          ),
                          Card(
                            title: "flutter_sqlite",
                            description: "MVP Architecture & sqlite",
                          ),
                          Card(
                            title: "bitcoin_tracker_dart",
                            description: "http request in dart",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            title: "crypto_tracker",
                            description: "a crypto tracker built in kotlin",
                          ),
                          Card(
                            title: "Trigo",
                            description: "connecting application to firebase",
                          ),
                          Card(
                            title: "bmi_caculator",
                            description: "a bmi caculator",
                          ),
                          Card(
                            title: "DiaryApp",
                            description: "MVP Architecture  built with kotlin ",
                          ),
                          Card(
                            title: "NewsApp",
                            description: "a news application bulit in kotlin",
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
              return Column(
                children: [
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                  Card(
                    title: "super_hero_app",
                    description: "using provider and http",
                  ),
                ],
              );
            })
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: Pagechildren(constraints.biggest.width));
      } else {
        return Column(children: Pagechildren(constraints.biggest.width));
      }
    });
  }
}

class Card extends StatelessWidget {
  final String title;
  final String description;

  Card({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(title,style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),),
                Text(description,style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
