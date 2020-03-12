import 'package:flutter/material.dart';
import 'package:jktinhand/jktinhand/widgets/dashboard.dart';
import 'package:jktinhand/jktinhand/widgets/pelita.dart';
import 'package:jktinhand/jktinhand/widgets/petabanjir.dart';
import 'package:jktinhand/jktinhand/widgets/rtuoop.dart';
import 'package:jktinhand/eam/widgets/eamdashboard.dart';

import 'dart:io';

enum MyDialogueAction{
  yes,
  no,
}



class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(       
        primarySwatch: Colors.blue,
        
      ),
      home: HomePage(),
    );
  }
}







class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {
  int _index = 0;


/*
void _showAlert(String value){
  showDialog(
    context: context,
    builder: (_) => new AlertDialog(
      title: new Text('Alert!'),
      content: new Text(value,
      style: new TextStyle(fontSize: 30.0),),
      actions: <Widget>[
        new FlatButton(onPressed: () {_dialogueResult(MyDialogueAction.yes);}, child: new Text('yes')),
        new FlatButton(onPressed: () {_dialogueResult(MyDialogueAction.no);}, child: new Text('no')),
      ],
    )
  );
}

void _dialogueResult(MyDialogueAction value){    
    if (value ==MyDialogueAction.yes )
       exit(0);
    if (value ==MyDialogueAction.no ) 
      Navigator.pop(context); 
      
}*/ 

@override
Widget build(BuildContext context) {
  Widget child;
  switch (_index) {
    case 0:
      child = DashboardHome();
      break;
    case 1:
      child = PelitaHome();
      break;
    case 2:
      child = GDBanjirHome();
      break;  
    case 3:
      child = RtuOopHome();
      break;    
     case 4:
      child = EamDashboardHome();
      break;    
    case 5:
      //child = FlutterLogo(colors: Colors.red);
      //_showAlert("Apakah akan keluar dari Aplikasi ?");
      exit(0);
      break;
  }

  return Scaffold(
    resizeToAvoidBottomPadding: false,
    body: SizedBox.expand(child: child),
    bottomNavigationBar: 
     new Theme(
        data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.blue,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.amber,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.white))), 
     child : BottomNavigationBar(
       onTap: (newIndex) => setState(() => _index = newIndex),
      currentIndex: _index,  
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Dashboard")),
        BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("Pelita")),
        BottomNavigationBarItem(icon: Icon(Icons.streetview), title: Text("GD Banjir")),
        BottomNavigationBarItem(icon: Icon(Icons.computer), title: Text("RTU OOP")),
        BottomNavigationBarItem(icon: Icon(Icons.devices), title: Text("Aset")),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), title: Text("Exit")),
      ],
    ),
  ),
  );
}
}



