import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_textfield.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChangeAdressView extends StatefulWidget {
  const ChangeAdressView({super.key});

  @override
  State<ChangeAdressView> createState() => _ChangeAdressViewState();
}

class _ChangeAdressViewState extends State<ChangeAdressView> {
//  **************************
  TextEditingController txtSearch = TextEditingController();
  GoogleMapController? _controller;
  final location = const [
    LatLng(37.42796133580665, -122.085749655962),
  ];
  late List<MarkerData> _customMarkers;
  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901295799,
    target: LatLng(37.42796133580665, -122.085749655962),
    zoom: 14.151926040649414,
  );
  @override
  void initState() {
    super.initState();
    _customMarkers = [
      MarkerData(
        marker: Marker(markerId: const MarkerId('id-1'), position: location[0]),
        child: customMarkers(
          "Everywher is Widget",
          Colors.blue,
        ),
      ),
    ];
  }

  customMarkers(String symbol, Color color) {
    return const SizedBox(
      width: 100,
      child: Column(
        children: [
          Icon(
            Icons.location_on,
            size: 30,
          ),
        ],
      ),
    );
  }
//  **************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            color: Colors.black,
            Icons.arrow_back,
            size: 25,
          ),
        ),
        title: Text(
          "Changer l'adresse",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: false,
      ),
      body: CustomGoogleMapMarkerBuilder(
        customMarkers: _customMarkers,
        builder: (context, Set<Marker>? markers) {
          if (markers == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GoogleMap(
            initialCameraPosition: _kLake,
            mapType: MapType.normal,
            compassEnabled: false,
            gestureRecognizers: Set()
              ..add(
                Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
              ),
            markers: markers,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: RoundTextfield(
                  controller: txtSearch,
                  hintText: "Rechercher une adresse",
                  left: Icon(
                    Icons.search,
                    color: TColor.primaryText,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red[100],
                      child: const Icon(
                        Icons.star,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Enregister la place Choisis",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
