import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/routes.dart';
import 'package:meditation_app/utils/color_constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: colorContant.primaryColor,
        ),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            SvgPicture.asset(
              'assets/icons/logo.svg',
              width: MediaQuery.of(context).size.width / 3,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 80),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Hi Afsar, Welcome\n',
                style: TextStyle(
                    height: 1.5, fontFamily: 'Roboto_Bold', fontSize: 40, color: Color(0xFFFFECCC)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'to Silent Moon',
                      style: TextStyle(fontSize: 40, fontFamily: 'Roboto_Light')),
                ],
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Explore the app, Find some peace of mind to \n prepare for meditation.',
              style: TextStyle(fontSize: 18, color: Colors.white, height: 2),
            ),
            Expanded(
              child: SvgPicture.asset(
                'assets/images/start_bg.svg',
                fit: BoxFit.fill,
              ),
            )
          ],
        )),
        Positioned(
            bottom: 50,
            left: 40,
            right: 40,
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: () => GoRouter.of(context).goNamed(RouteName.topicPage),
                    child: const Text('GET STARTED'))))
      ]),
    );
  }
}
