import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/pages/splash.dart';

import 'core/theme/app_theme.dart';
import 'layout/home_layout.dart';

void main() {
   runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
   // var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
    //  themeMode: provider.currenttheme,
      theme: AppTheme.lightTheme,
     // darkTheme: AppTheme.darkTheme,
     // localizationsDelegates: AppLocalizations.localizationsDelegates,
    //  supportedLocales: AppLocalizations.supportedLocales,
     // locale: Locale(provider.local),
      debugShowCheckedModeBanner: false,

      // give it key of screen to start with it
      initialRoute: HomeLayout.routeName,
      // map faster the array on search with key
      routes: {
        // call back function ( function in another place)
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),

      },
    );
  }
}
