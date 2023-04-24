import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/routes.dart';
import 'package:meditation_app/utils/color_constant.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0, child: SvgPicture.asset('assets/images/sign_up_bg.svg')),
          Positioned(
              top: 50.0,
              left: 20.0,
              child: IconButton(
                onPressed: () => GoRouter.of(context).pop(),
                icon: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      border: Border.all(color: const Color(0xFFEBEAEC))),
                  child: const Icon(Icons.arrow_back),
                ),
              )),
          Positioned(
              left: 20,
              right: 20,
              top: 130,
              child: Column(
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28.0),
                  ),
                  const SizedBox(height: 20),
                  SvgPicture.asset('assets/icons/sign_up_with_fb.svg'),
                  const SizedBox(height: 20),
                  SvgPicture.asset('assets/icons/sign_up_with_google.svg'),
                  const SizedBox(height: 20),
                  const Text(
                    'OR LOG IN WITH EMAIL',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xFFA1A4B2)),
                  ),
                  const SizedBox(height: 20),
                  const EmailWidget(),
                  const SizedBox(height: 20),
                  const PasswordWidget(),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 63,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(const Size.fromWidth(double.infinity)),
                            backgroundColor: MaterialStateProperty.all(colorContant.primaryColor)),
                        onPressed: () => print('object'),
                        child: const Text(
                          'GET STARTED',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  TextButton(
                      onPressed: () => print('object'),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFF3F414E), fontSize: 14.0, fontWeight: FontWeight.w400),
                      )),
                ],
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ALREADY HAVE AN ACCOUNT?',
                      style: TextStyle(color: Color(0xFFA1A4B2)),
                    ),
                    TextButton(
                        onPressed: () => GoRouter.of(context).pushNamed(RouteName.signUp),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: colorContant.primaryColor),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63.0,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Email address',
            suffixIcon: const Icon(Icons.check, weight: 3.0),
            suffixIconColor: const Color(0xFF6CB28E),
            filled: true,
            fillColor: const Color(0xFFF2F3F7),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63.0,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Password',
            suffixIcon: const Icon(
              FontAwesomeIcons.eyeSlash,
              size: 18.0,
            ),
            suffixIconColor: const Color(0xFF3F414E),
            filled: true,
            fillColor: const Color(0xFFF2F3F7),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)),
      ),
    );
  }
}
