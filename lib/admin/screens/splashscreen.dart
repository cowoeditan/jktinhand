import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:jktinhand/admin/screens/login.dart';

class SplashPage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<SplashPage> {

  loadWidget() async{
    return await new Future<Widget>.delayed(
      Duration(
        seconds: 5
      ),() => LoginPage()
    ) ;
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      
      title: new Text('Selamat Datang Di Jakarta In Hand',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      //loadingData: loadWidget,
      image: new Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red,
      seconds: 5,
      navigateAfterSeconds: new LoginPage(),
    );
  }
}

