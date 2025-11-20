import 'package:flutter/material.dart';
import '../theme/pink.dart'; 
import '../data/data.dart'; 
import '../routes/routes.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio de ${PortfolioData.fullName}',
      
      theme: AppTheme.lightPinkTheme,
    
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      
      debugShowCheckedModeBanner: false,
    );
  }
}
