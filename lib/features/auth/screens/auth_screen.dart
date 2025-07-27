import 'package:flutter/material.dart';
import 'package:nursery/components/customInput.dart';
import 'package:nursery/constants/colors.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth_screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1470058869958-2a77ade41c02?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
            ),
          ),
          Column(
            children: [
              SizedBox(height: 217),
              Expanded(
                child: Card(
                  elevation: 0,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  color: Colors.white,
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 35),
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Login to your account",
                            style: TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 12),
                          InputBox(
                            controller: _usernameController,
                            label: "Username",
                          ),
                          SizedBox(height: 12),
                          InputBox(
                            controller: _passwordController,
                            label: "Password",
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                              onPressed: () {
                                // Add login logic here
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
