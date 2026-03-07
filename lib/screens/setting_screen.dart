import 'package:flutter/material.dart';
//import 'career_details_screen.dart';
import '../main.dart';

class SettingScreen extends StatelessWidget {
  final bool isDark;
  final Function(bool) onToggle;

  SettingScreen({required this.isDark, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Setting"),
        leading: Icon(Icons.arrow_back),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// DARK MODE
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.dark_mode, color: Colors.blue),

                  SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dark Mode",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Switch to dark mode",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  Switch(
                    value: MyApp.of(context)!.isDarkMode,
                    onChanged: (value) {
                      MyApp.of(context)!.toggleTheme(value);
                    },
                  ), // Switch(value: isDark, onChanged: onToggle),
                ],
              ),
            ),

            SizedBox(height: 15),

            /// ABOUT APP
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },

              child: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Icon(Icons.info, color: Colors.blue),

                    SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About App",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Developer information",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            /// LOGOUT
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogoutScreen()),
                );
              },

              child: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red),

                    SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "Sign out of your account",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            /// BLUE CIRCLE
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),

              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset("assets/logo.png"),
              ),
            ),

            SizedBox(height: 10),

            /// TAGLINE
            Text(
              "Career Advisor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            SizedBox(height: 5),

            Text(
              "Guiding Your Future, Step by Step",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About App")),
      body: Center(child: Text("Developer Info")),
    );
  }
}

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logout")),
      body: Center(child: Text("Logout Screen")),
    );
  }
}
