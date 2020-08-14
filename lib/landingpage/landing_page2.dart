
import 'package:flutter/material.dart';

class LandingPage2 extends StatelessWidget {

  // ignore: non_constant_identifier_names
  List<Widget> Pagechildren(double width){
    return <Widget>[
      Container(
        color: Colors.black,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50 ,vertical: 20),
              child: Text("I design and code",style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.white
              ) ,),
            ),
          ],
        ),
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
                children: Pagechildren(constraints.biggest.width)
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