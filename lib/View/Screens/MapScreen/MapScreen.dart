import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  static const _initialCameraPosition = CameraPosition(
      target:LatLng(19.075983, 72.877655),
      zoom: 11.5
  );

  late GoogleMapController _googleMapController;
   late Marker _origin=Marker(markerId: MarkerId("origin"));
   late Marker _destination=Marker(markerId: MarkerId("destination"));

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _googleMapController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition:_initialCameraPosition ,
        onMapCreated: (controller)=>_googleMapController=controller,
        markers: {
          if(_origin!=null)_origin,
          if(_destination!=null) _destination
        },
        onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        onPressed: ()=>_googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition)
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  void _addMarker(LatLng pos){
    if(_origin==null || (_origin!=null && _destination!=null)){
      // Set Origin
      setState((){
        _origin=Marker(
            markerId: MarkerId("origin"),
            infoWindow: InfoWindow(title: "origin"),
            icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueBlue,
        ),
        position: pos
        );

      });
    }
    else{
      setState((){
        _destination=Marker(
            markerId: MarkerId("destination"),
            infoWindow: InfoWindow(title:'Destination'),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos
        );
      });

    }
  }


}
