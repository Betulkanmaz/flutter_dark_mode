import 'package:flutter/material.dart';
import 'package:flutter_dark_mode/screens/home_screen.dart';
import 'package:flutter_dark_mode/themes/theme_color_scheme.dart';
import 'package:flutter_dark_mode/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, value, child) {
          return MaterialApp(
            title: 'Dark Theme',
            debugShowCheckedModeBanner: false,
            theme: ThemeColor.themeData(themeChangeProvider.darkTheme, context),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
