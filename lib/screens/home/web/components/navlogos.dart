import 'package:flutter/material.dart';
import '../../../../models/navlogos.dart';

class NavLogos extends StatefulWidget{
  @override
  _NavLogosState createState() => _NavLogosState();
}

class _NavLogosState extends State<NavLogos> {
  final List<NavLogo> middleLogo = getNavLogo();
  final NavLogo logoutLogo =  getLogoutLogo();
  int selected = 0;

  void changeNavigation(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return ListView(
        children: [
          Logo(),
          SizedBox(
            height: 100.0,
          ),
          ...middleLogo.map((item) => 
            MiddleLogo(
              navLogo : item, 
              index: middleLogo.indexOf(item),
              selected: selected,
              press: changeNavigation
              )
            ).toList(),
          SizedBox(
            height: 65.0,
          ),
          LogoutLogo(logoutLogo)
        ],
      );
  }
}

class Logo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 50.0,
      child: Image.asset("logo.png"),
    );
  }
}

class MiddleLogo extends StatelessWidget{
  final NavLogo navLogo;
  final int index;
  final selected;
  final press;
  
  const MiddleLogo({
    required this.navLogo,
    required this.index,
    required this.selected,
    required this.press
  });

  @override
  Widget build(BuildContext context){
    return Container(
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              width: double.infinity,
              decoration: selected == index ? BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.orange,
                    width: 3.0
                  )
                )
              ): null,
              child: IconButton(
                      icon: Icon(navLogo.icon), 
                      onPressed: (){
                        press(this.index);
                      },
                    ),
          );
  }
}


class LogoutLogo extends StatelessWidget{
  final NavLogo navLogo;

  const LogoutLogo(this.navLogo);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: IconButton(
              icon: Icon(navLogo.icon),
              onPressed: (){},
            )
    );
  }
}