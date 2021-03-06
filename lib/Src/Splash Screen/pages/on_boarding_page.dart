import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:study_buddy/Src/Login/login.dart';
import 'package:study_buddy/Src/Splash%20Screen/widgets/Button_Widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              image: buildImage('assets/OnBoarding/ebook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Featured Books',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/OnBoarding/readingbook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Simple UI',
              body: 'For enhanced reading experience',
              image: buildImage('assets/OnBoarding/manthumbs.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Today a reader, tomorrow a leader',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Start Reading',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/OnBoarding/learn.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onSkip: () => goToHome(context),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          dotsDecorator: getDotDecoration(),
          // onChange: (index) => print(
          //   'Page $index selected',
          // ),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      );

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          width: 350,
        ),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.deepPurpleAccent,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
