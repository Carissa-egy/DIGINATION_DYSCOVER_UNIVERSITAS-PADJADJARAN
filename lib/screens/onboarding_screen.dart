import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          titleWidget: const Text(
            'Early detection leads to\nbetter learning outcomes!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          bodyWidget: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Screen handwriting, understand reading behavior, and support your child’s needs',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          image: Container(
            height: 250,
            child: const Center(
              child: Icon(
                Icons.menu_book_rounded,
                size: 180,
                color: Colors.orange,
              ),
            ),
          ),
        ),
        PageViewModel(
          titleWidget: const Text(
            'Apa Itu EduScan AI?',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          body:
              'EduScan AI adalah platform deteksi dini disleksia berbasis AI dari tulisan tangan anak.',
          image: const Center(child: Icon(Icons.psychology_alt, size: 180, color: Colors.teal)),
        ),
        PageViewModel(
          titleWidget: const Text(
            'Yuk mulai deteksi sekarang!',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          body:
              'Kami bantu kamu mengenali tanda disleksia sejak dini untuk intervensi lebih tepat.',
          image: const Center(child: Icon(Icons.school, size: 180, color: Colors.deepPurple)),
        ),
      ],
      done: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold)),
      onDone: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
      next: const Text('Next'),
      showSkipButton: false,
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.orange,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
