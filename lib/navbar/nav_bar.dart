import 'package:flutter/material.dart';
import 'package:my_portfolio/landingpage/landing_page2.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth >1200){
            return DesktopNavbar();
          } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200){
            return DesktopNavbar();
          } else{
            return MobileNavbar();
          }
        }
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Container(
        //constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.android),
            Row(
              children: [
                Text("Home",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("About",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100
                ),),
                SizedBox(
                  width: 30,
                ),
                Text("Contact",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100
                ),)
              ],
            )
          ],

        ),
      ),
    );
  }
}


class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Icon(Icons.android),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text("Home",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100
                ),),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage2()),
                    );
                  },
                  child: Text("About",style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w100
                  ),),
                ),
                SizedBox(
                  width: 30,
                ),
                Text("Contact",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100
                ),)
              ],
            )
          ],

        ),
      ),
    );
  }
}


