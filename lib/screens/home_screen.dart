import 'package:flutter/material.dart';
import 'package:flutter_dark_mode/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeProvider>(context);
    void toggleSwitch(bool value) {
      if (themeChange.darkTheme == false) {
        setState(() {
          themeChange.darkTheme = true;
        });
      } else {
        setState(() {
          themeChange.darkTheme = false;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme Demo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dark theme",
                      style: TextStyle(fontSize: 18),
                    ),
                    Switch(
                      onChanged: toggleSwitch,
                      value: themeChange.darkTheme,
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
