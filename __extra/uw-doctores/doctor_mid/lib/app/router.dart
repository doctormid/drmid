


import 'package:doctor_mid/ui/screens/initial_flow.dart';
import 'package:flutter/material.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
     
   

         case InitialFlow.id:
        return MaterialPageRoute(builder: (_) => InitialFlow()); 
        
    
        
        
        

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No rout defined for'),
                  ),
                ));
    }
  }

  static goToNextScreenWithReplacment(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  }

  static goToNextScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
