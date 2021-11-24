import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/package_details_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/producer_details_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/singup_screen.dart';

import 'core/app_colors.dart';
import 'models/producer_model.dart';

class RouterGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    var args = settings.arguments;
    switch(settings.name){
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'favorites':
        return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case 'sing-up':
        return MaterialPageRoute(builder: (_) => SingupScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'payment':
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case 'producer':
        for(args in Producer) {
          MaterialPageRoute(builder: (_) => ProducerDetailsScreen(
          producer: args
          ));
        }
        return _errorRoute();
       case 'package-details':
          for(args in Package) {
            return MaterialPageRoute(builder: (_) => PackageDetailsScreen(
                package: args
          ));

      }return _errorRoute();
      default:
        _errorRoute();
    }


  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(backgroundColor: AppColors.green,
              title: Text('Error')),
          body: Center(
              child: Text("Error, that page does not exists!")
          )
      );
    });
  }
}
