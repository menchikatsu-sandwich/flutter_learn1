import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMapScreen extends StatefulWidget {
 @override
 _LocationMapScreenState createState() => _LocationMapScreenState();

}

class _LocationMapScreenState extends State<LocationMapScreen> {
 GoogleMapController? mapController;
 LatLng? _currentPosition;

 @override
 void initState() {
  super.initState();
  _determinePosition();
 }

 Future<void> _determinePosition() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
   await Geolocator.openLocationSettings();
   return;
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
   permission = await Geolocator.requestPermission();
   if (permission == LocationPermission.denied) {
    return;
   }
  }

  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  setState(() {
   _currentPosition = LatLng(position.latitude, position.longitude);
  });
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(title: Text('Lokasi Saya')),
   body: _currentPosition == null
     ? Center(child: CircularProgressIndicator())
     : GoogleMap(
       onMapCreated: (controller) => mapController = controller,
       initialCameraPosition: CameraPosition(
        target: _currentPosition!,
        zoom: 16,
       ),

       markers: {
        Marker(
         markerId: MarkerId("currentLocation"),
         position: _currentPosition!,
         infoWindow: InfoWindow(title: "Posisi Saya"),
        ),
       },
      ),
  );
 }
}