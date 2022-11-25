import 'package:flutter/material.dart';
import 'package:app_shamo/theme.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var secondariTextStyle;

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primariTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Sign In to Countinue',
              style: secondariTextStyle,
            ),
          ],
        ),
      );
    }

    Widget emailinput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primariTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primariTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: subTitleTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordinput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primariTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 18,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primariTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: subTitleTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
            ),
          ),
          child: Text(
            'Sign In',
            style: primariTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/sign-up',
                );
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMArgin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            emailinput(),
            passwordinput(),
            signInButton(),
            const Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}
