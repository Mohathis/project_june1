import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridCustom(),));
}
class GridCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.Custom'),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          ),
          childrenDelegate:
          SliverChildListDelegate(List.generate(12,
                  (index)=> Padding(
                padding: EdgeInsets.all(18.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/icons/ani.png'))
                        ),
                      ),
                      Text('item.1',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                      ),
                      Text('\$ 280',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              )))),
    );
  }

}