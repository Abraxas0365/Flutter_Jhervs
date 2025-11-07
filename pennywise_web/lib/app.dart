import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'modules/dashboard/view/dashboard_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PennyWise',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF191919),
        primaryColor: const Color(0xFF630000),
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF1D1D1D),
          primary: Color(0xFF630000),
          secondary: Color(0xFF630000),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D1D1D),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: AppRoutes.dashboard,
      routes: {
        AppRoutes.dashboard: (context) => const DashboardPage(),
      },
    );
  }
}
