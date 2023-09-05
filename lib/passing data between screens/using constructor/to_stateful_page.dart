import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  final String name,location;
  int? phone;

   StatefulPage({Key? key, required this.name, required this.location, required this.phone}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            Text(widget.location),
            Text('${widget.phone}'),
          ],
        ),
      ),
    );
  }
}
