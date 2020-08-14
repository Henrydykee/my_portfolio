import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class LandingPage extends StatelessWidget {

  // ignore: non_constant_identifier_names
  List<Widget> Pagechildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text("Hi , \nI'm Henry",style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.black
              ) ,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
              child: Text("I'm Mobile a Developer,I spend most of my time writing code for applications using Flutter, and a little Kotlin. I adobeXD to design efficient user interfaces. I love talking about tech"
                ,style:TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ) ,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: width,
                child:Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                       _launchURL();
                      },
                        child: Image.asset("assets/images/github.png",height: 30,width: 30,)),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        _launchTwitter();
                      },
                        child: Image.asset("assets/images/twitter.png", height: 30,width: 30,)),
                    SizedBox(width: 10,),
                    Icon(Icons.markunread,size: 30,),
                  ],
                ) ,
              ),
            )
          ],
        ),
      ),
      Container(
          width: width,
          child:Image.asset("assets/images/mobile.gif")
//          Lottie.asset('assets/images/lottie.json')
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth >800){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: Pagechildren(constraints.biggest.width/2)
            );
          } else{
            return Column(
              children: Pagechildren(constraints.biggest.width)
            );
          }
        }
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/Henrydykee';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTwitter() async {
  const url = 'https://twitter.com/henrydykee1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}