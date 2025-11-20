import 'package:flutter/material.dart';
import '../data/data.dart'; 

class ContactScreen extends StatelessWidget {
  static const String routeName = '/contact';
  
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final accentTextColor = Theme.of(context).primaryColor;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma de Mimi'),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icono de firma
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  PortfolioData.signatureLogoUrl, 
                  height: 200, 
                  width: 200, 
                  fit: BoxFit.cover, 
                ),
              ),
              
              // Firma de mimi
              Text(
                PortfolioData.developerSignature,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: accentTextColor, 
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              
              const Text(
                'De nuevo una foto de Baloo, es que es muy icónico ;)',
                style: TextStyle(
                  color: Color(0xFFE91E63), 
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 40),

              // Información de contacto
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.email, color: Theme.of(context).primaryColor), // Icono Rosa
                        title: Text(
                          'Correo',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          PortfolioData.contactEmail,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone, color: Theme.of(context).primaryColor), // Icono Rosa
                        title: Text(
                          'Teléfono',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          PortfolioData.contactPhone,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}