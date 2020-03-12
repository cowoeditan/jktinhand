import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
//import 'dart:math';

class Constants {
  static const String Subscribe = 'Info';
  static const String Settings = 'Search';

  static const List<String> choices = <String>[
    Subscribe,
    Settings,
  ];
}

class GDBanjirHome extends StatefulWidget {
  @override
  _GDBanjirHomeState createState() => _GDBanjirHomeState();
}

class _GDBanjirHomeState extends State<GDBanjirHome> {
  GoogleMapController mapController;
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = new Set<Marker>();
  Completer<GoogleMapController> _controller = Completer();

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //Added

    super.dispose();
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Subscribe) {
      print('Subscribe');
    }
  }

  @override
  Widget build(BuildContext context) {
    LatLng pinPosition = LatLng(-6.1960507,106.8328106);
    // these are the minimum required values to set
    // the camera position
    CameraPosition initialLocation = CameraPosition(
        zoom: 11,
        //bearing: 30,
        target: pinPosition);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gardu Banjir'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new SafeArea(
        //I didnt add appbar. this will add necessary padding for status bar.
        child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child:
                    /*  FutureBuilder(
                      //future: API().getPosGardu(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.data == null) {                          
                          return Container(
                              child: Center(
                                child: CircularProgressIndicator()
                              )
                            );
                        } else {
                        _posGarduPadam = snapshot.data;
                        var value = snapshot.data;
                        BitmapDescriptor  _img;                         
                            for (var i = 0; i < value.length; i++) {
                                LatLng pos = LatLng(value[i].lat,value[i].lon);
                                _img = iconGangguan;                                
                                if (value[i].jenis=='GANGGUAN')
                                    _img = iconGangguan;
                                if (value[i].jenis=='PEMELIHARAAN')
                                    _img = iconPemeliharaan;                                    
                                 if (value[i].jenis=='BANJIR')
                                    _img = iconBanjir;         

                                _markers.add(
                                  Marker(
                                    markerId: MarkerId(value[i].id),
                                    position: pos,                                    
                                       onTap: () {                                        
                                        setState(() {
                                          currentlySelectedPin =_posGarduPadam[i];
                                          pinPillPosition = 30;
                                        });
                                      },
                                      icon: _img          
                                  )
                                 
                              );
                              print (value[i].name);
                            }  
                        return  GoogleMap(
                              myLocationEnabled: true,
                              compassEnabled: true,
                              //onCameraMove: _onCameraMove,
                              myLocationButtonEnabled: true,
                              mapType: MapType.normal,
                              markers: Set.from(_markers),
                              initialCameraPosition: initialLocation,
                              onMapCreated: (GoogleMapController controller) {
                                  //controller.setMapStyle(Utils.mapStyles);
                                  _controller.complete(controller);
                                  
                                  setState(() {                                       
                                  });  
                                  
                              },
                              onTap: (LatLng location) {
                                setState(() {
                                  pinPillPosition = -140;
                                });
                              },
                              );
                        }    
                      },
                    ), */
                    GoogleMap(
                  myLocationEnabled: true,
                  compassEnabled: true,
                  //onCameraMove: _onCameraMove,
                  myLocationButtonEnabled: true,
                  mapType: MapType.normal,
                  markers: Set.from(_markers),
                  initialCameraPosition: initialLocation,
                  onMapCreated: (GoogleMapController controller) {
                    //controller.setMapStyle(Utils.mapStyles);
                    _controller.complete(controller);

                    setState(() {});
                  },
                  onTap: (LatLng location) {
                    setState(() {
                      //  pinPillPosition = -140;
                    });
                  },
                )),

            /*     MapPinPillComponent(
                      pinPillPosition: pinPillPosition,
                      currentlySelectedPin: currentlySelectedPin
                  ), */
          ],
        ),
      ),
    );
  }
}
