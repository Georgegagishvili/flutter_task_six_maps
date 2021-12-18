import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task_six/models/wonders.dart';

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    CameraPosition _camPosition = CameraPosition(
      target: widget.wonder.latLong,
      zoom: 15,
    );
    Marker _marker = Marker(
        markerId: MarkerId(UniqueKey().toString()),
        position: widget.wonder.latLong,
        infoWindow: InfoWindow(
          title: "Description:",
          snippet: widget.wonder.description,
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.wonder.name),
        backgroundColor: Colors.grey[800],
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        markers: {_marker},
        initialCameraPosition: _camPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  const MapPage({
    Key? key,
    required this.wonder,
  }) : super(key: key);
  final WorldWonder wonder;

  @override
  _MapPageState createState() => _MapPageState();
}
