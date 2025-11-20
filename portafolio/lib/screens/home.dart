import 'package:flutter/material.dart';
import '../data/data.dart'; 
import '../widgets/app_bar.dart'; 
import '../widgets/section_card.dart'; 

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = Theme.of(context).textTheme.headlineLarge;
    final headlineStyle = Theme.of(context).textTheme.headlineSmall;
    final bodyStyle = Theme.of(context).textTheme.bodyLarge;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Mi Portafolio'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Perfil
              Center(
                child: Column(
                  children: [
                    // Imagen de perfil
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColor.withOpacity(0.5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        backgroundImage: AssetImage(PortfolioData.profileImageUrl),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Nombre y apellido 
                    Text(
                      PortfolioData.fullName,
                      style: nameStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    // Descripción
                    Text(
                      PortfolioData.headline,
                      style: headlineStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),

              // Seccion 1
              SectionCard(
                title: PortfolioData.aboutTitle1,
                children: PortfolioData.aboutContent1
                    .map((text) => Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(text, style: bodyStyle),
                        ))
                    .toList(),
              ),

              // Seccion 2
              SectionCard(
                title: PortfolioData.aboutTitle2,
                children: PortfolioData.aboutContent2
                    .map((text) => Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(text, style: bodyStyle),
                        ))
                    .toList(),
              ),
              
              // Seccion 3
              SectionCard(
                title: PortfolioData.hobbiesTitle,
                children: PortfolioData.hobbiesContent
                    .map((text) => Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text('• $text', style: bodyStyle),
                        ))
                    .toList(),
              ),

              // Seccion 4
              SectionCard(
                title: PortfolioData.projectsTitle,
                children: PortfolioData.projects.map((project) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.code, color: Theme.of(context).primaryColor),
                    title: Text(project.title, style: bodyStyle?.copyWith(fontWeight: FontWeight.bold)),
                    subtitle: Text(project.description, style: bodyStyle),
                  );
                }).toList(),
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}