import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//Animates the Camera Position to desired Location.
void moveToLocation(
    {@required LatLng latLng,
    double zoom,
    @required GoogleMapController mapController}) {
  mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
    target: latLng,
    zoom: zoom,
  )));
}

//Add Items Name in DropDownMenu from FireStore.
addDDMenuItems(snaps, locationsList) {
  for (int i = 0; i < snaps.length; ++i) {
    locationsList.add(DropdownMenuItem(
      child: Text(snaps[i]['displayName']),
      value: snaps[i]['displayName'],
    ));
  }
}

//Add Markers on the Map retrieved from FireStore.
addMarkers(snaps, markersList) {
  for (int i = 0; i < snaps.length; ++i) {
    markersList.add(Marker(
      markerId: MarkerId(snaps[i]['displayName']),
      position: LatLng(snaps[i]['latitude'], snaps[i]['longitude']),
    ));
  }
}

//Add Locations to be animated to from FireStore.
addLocationCoordinates(snaps, locationsLatLng) {
  for (int i = 0; i < snaps.length; ++i) {
    locationsLatLng.add(LatLng(snaps[i]['latitude'], snaps[i]['longitude']));
  }
}
