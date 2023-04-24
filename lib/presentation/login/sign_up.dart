import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/utils/color_constant.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                'Create your account',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28.0),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset('assets/icons/sign_up_with_fb.svg'),
              const SizedBox(height: 20),
              SvgPicture.asset('assets/icons/sign_up_with_google.svg'),
              const SizedBox(height: 20),
              const Text(
                'OR LOG IN WITH EMAIL',
                style:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xFFA1A4B2)),
              ),
              const SizedBox(height: 20),
              const UserNamedWidget(),
              const SizedBox(height: 20),
              const EmailWidget(),
              const SizedBox(height: 20),
              const PasswordWidget(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'I have read the ',
                      style: TextStyle(
                          color: Color(0xFFA1A4B2), fontWeight: FontWeight.w400, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Privace Policy',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF7583CA))),
                      ],
                    ),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) => print('object'),
                  )
                ],
              ),
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
                  ))
            ],
          ),
        )
      ],
    ));
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

class UserNamedWidget extends StatelessWidget {
  const UserNamedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63.0,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Username',
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
