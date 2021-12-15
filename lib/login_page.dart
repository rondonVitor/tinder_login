import 'package:flutter/material.dart';
import 'package:tinder_login/button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent, //You can make this transparent
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: const [
                  Color(0xffff764f),
                  Color(0xffFF297E),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      child: Image.asset('assets/images/tinder-logo.png'),
                    ),
                    SizedBox(height: 40),
                    RichText(
                      strutStyle: StrutStyle.fromTextStyle(
                        TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By tapping Create Account or Sign In, you agree to our\n',
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: '. Learn how we process your data in our '),
                          TextSpan(
                            text: 'Privacy\n Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Cookies Policy.',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ButtonWidget(
                        icon: 'icon-apple.png', label: 'SIGN IN WITH APPLE'),
                    SizedBox(height: 10),
                    ButtonWidget(
                        icon: 'icon-facebook.png',
                        label: 'SIGN IN WITH FACEBOOK'),
                    SizedBox(height: 10),
                    ButtonWidget(
                        icon: 'icon-conversation-balloon.png',
                        label: 'SIGN IN WITH PHONE NUMBER'),
                    SizedBox(height: 20),
                    Text('Trouble Signin In?'),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



//Button to back
//Tinder logo => Image.asset
//Text => RichText
//Button sign in with apple
//Button sign in with facebook
//Button sign in with Phone Number
//Text 