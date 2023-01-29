import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _mapController;
  Set<Marker> markers = {};
  LatLng myLocation = const LatLng(27.746996, 85.321873);
  LatLng myLocation1 = const LatLng(27.746996, 85.321873);
  @override
  void initState() {
    markers.add(
      Marker(
        markerId: MarkerId(myLocation.toString()),
        position: myLocation,
        infoWindow: const InfoWindow(
          title: 'LugaFato Kitchen',
          snippet: 'LugaFato Kithchen',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(myLocation1.toString()),
        position: myLocation1,
        infoWindow: const InfoWindow(
          title: 'LugaFato Kitchen',
          snippet: 'Kathmandu Branch office',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LugaFato Kitchen Location',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4C53A5),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Location of LugaFato Kitchen",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: GoogleMap(
                zoomControlsEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: myLocation,
                  zoom: 10,
                ),
                markers: markers,
                mapType: MapType.normal,
                onMapCreated: ((controller) => _mapController = controller),
              ),
            )
          ],
        ),
      ),
    );
  }
}
