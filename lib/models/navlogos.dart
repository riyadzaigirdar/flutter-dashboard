import 'package:flutter/material.dart';

class NavLogo {
  final IconData icon;

  NavLogo(this.icon);
}


List<NavLogo> getNavLogo(){
  return [
    NavLogo(Icons.widgets),
    NavLogo(Icons.score),
    NavLogo(Icons.calendar_today),
    NavLogo(Icons.pages),
    NavLogo(Icons.message),
    NavLogo(Icons.settings),
  ];
}

NavLogo getLogoutLogo(){
  return NavLogo(Icons.logout);
}