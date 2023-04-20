import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/utils/color_constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/icons/logo_login.svg',
          width: MediaQuery.of(context).size.width,
        ),
        const Text(
          'We are what we do',
          style: TextStyle(fontSize: 30, fontFamily: 'Roboto_Bold'),
        ),
        const Text(
          'Thousand of people are usign silent moon \n for smalls meditation',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFFA1A4B2), fontSize: 15, height: 2.0, fontFamily: 'Roboto_Light'),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width - 40,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colorContant.primaryColor)),
              onPressed: () => print(''),
              child: const Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'ALREADY HAVE AN ACCOUNT?',
              style: TextStyle(color: Color(0xFFA1A4B2)),
            ),
            TextButton(
                onPressed: () => print(''),
                child: Text(
                  'LOG IN',
                  style: TextStyle(color: colorContant.primaryColor),
                ))
          ],
        )
      ]),
    );
  }
}
