import 'package:flutter/material.dart';
import 'package:lab/base/styles.dart';
import 'package:lab/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  final TextEditingController getUsernameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    getUsernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/login.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Login to Your Account",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: getUsernameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[300],
                labelText: "Email or Username",
                labelStyle: TextStyle(color: Colors.grey[700]),
              ),
            ),
            
            const SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none,
                ),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey[700]),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // String username = getUsernameController.text;
                  // if (username.isEmpty) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //    const SnackBar(content: Text("Please enter a username or email")),
                  //   );
                  // } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // builder: (context) => HomeView(username: username),
                        builder: (context) => const HomeView(),
                      ),
                    );
                  // }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Navigate to registration page
              },
              child: Text(
                'New user? Register now',
                style: TextStyle(color: AppStyles.primaryColor),
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: AppStyles.primaryColor,
                    height: 36,
                  ),
                ),
              ),
              const Text("or login with"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: AppStyles.primaryColor,
                    height: 36,
                  ),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png",
                  width: 40,
                  height: 40,
                ),
                Image.network(
                  "https://e7.pngegg.com/pngimages/670/159/png-clipart-facebook-logo-social-media-facebook-computer-icons-linkedin-logo-facebook-icon-media-internet-thumbnail.png",
                  width: 45,
                  height: 45,
                ),
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/sco/thumb/9/9f/Twitter_bird_logo_2012.svg/1200px-Twitter_bird_logo_2012.svg.png",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
