import 'package:flutter/material.dart';
import 'package:custom_route_transition_do/custom_route_transition_do.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1': ( _ ) => Page1(), 
        'page2': ( _ ) => Page2(), 
      },
      
    );
  }
}


class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          child: Text('Go to page2'),
          color: Colors.white,
          onPressed: () {

            RouteTransitions(
              context: context,
              child: Page2(),
              animation: AnimationType.fadeIn,
              duration: Duration( milliseconds: 100 ),
              replacement: true
            );

          }
        )
     ),
   );
  }
}



class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Page2'),
     ),
   );
  }
}