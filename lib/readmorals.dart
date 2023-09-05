import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main(){
  runApp(MaterialApp(home: Readmore(),));
}

class Readmore extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read More Read Less'),
      ),
      body: Column(
        children: [
          ReadMoreText('Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.',
          trimLines: 2,
            preDataText: 'AMANDA',
            preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
            style: TextStyle(color: Colors.deepPurple),
            colorClickableText: Colors.red,
            trimMode: TrimMode.Line,
            trimCollapsedText: '....showmore',
            trimExpandedText: '.....showless',
          ),
          Divider(),
          ReadMoreText('Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.',
          trimLines: 2,
            preDataText: 'Faris',
            preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
            style: TextStyle(color: Colors.deepPurple),
            colorClickableText: Colors.red,
            trimMode: TrimMode.Line,)
        ],
      ),
    );
  }
}
