import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_june1/splash2.dart';
import 'package:project_june1/validation.dart';

void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.blue),
      bodyTextStyle: GoogleFonts.aBeeZee(
        fontStyle: FontStyle.italic,fontSize: 20,color: Colors.green),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.white,Colors.grey,Colors.black12],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft)
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: 'Introduction screen shows the details of the app and demo of pages',
          image: IntroImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS273in9lcvRmTWbkYqqdmnx1cRy8hpw0S9WiqRqNZbFrapPNA8pr6Dp0GAgo7vqVsb7fY&usqp=CAU'),
        ),

        PageViewModel(
          title: 'Next',
          body: 'Introduction screen shows the details of the app and demo of pages',
          image: IntroImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0np1QGlfJkfNgOv0oRHcDzWMsWsq0uxWXA&usqp=CAU'),
        ),

        PageViewModel(
          title: 'Here We Go',
          body: 'Introduction screen shows the details of the app and demo of pages',
          image: IntroImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/blue-modern-gaming-intro-streaming-video-design-template-0fe40511ea78daa725306310ea152c67_screen.jpg?ts=1681542184'),
        ),
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>splash2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2())),
      showSkipButton: true,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward_ios_rounded),
      done: Text('Done'),
      dotsDecorator:  DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }

  IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(image,width: 500,),
    );
  }
}
